using System;
using Microsoft.AspNet.SignalR.Client;
using Narato.Demo.SignalR.Data;
using System.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Narato.Demo.SignalR.UpdateService
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Starting SQL dependency");
            var connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DepartureDB"].ConnectionString;

            SqlDependency.Stop(connectionString);
            SqlDependency.Start(connectionString);
            
            StartListening();

            Console.ReadLine();

        }

        private static void StartListening()
        {
            using (var cn = new SqlConnection(ConfigurationManager.ConnectionStrings["DepartureDB"].ConnectionString))
            {
                using (var cmd = cn.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT [Time],[Destination],[FlightNo],[Gate],[Remarks],[Id] FROM [dbo].[Departures]";

                    cmd.Notification = null;

                    //  creates a new dependency for the SqlCommand
                    SqlDependency dep = new SqlDependency(cmd);
                    //  creates an event handler for the notification of data
                    //      changes in the database.
                    dep.OnChange += Dep_OnChange;

                    cn.Open();
                    cmd.ExecuteReader();
                }
            }
            Console.WriteLine("Listening...");
        }

        private static void Dep_OnChange(object sender, SqlNotificationEventArgs e)
        {
            Console.WriteLine("Change caught! Triggering update to Webserver...");

            if (e.Type == SqlNotificationType.Change)
            {
                Console.WriteLine("Listening...");
            }

            if(e.Info == SqlNotificationInfo.Update)
            {
                Console.WriteLine("Info Update...");
            }

            if (e.Source == SqlNotificationSource.Database)
            {
                Console.WriteLine("Source Database...");
            }

            var model = new FlightInfoModel();
            var updatedDepartures = model.Departures.Where(x => !string.IsNullOrEmpty(x.Action));
            Update(updatedDepartures.ToList());
            StartListening();
        }

        private static void Update(List<Departure> departures)
        {
            var connection = new HubConnection("http://localhost:62127");
            var hub = connection.CreateHubProxy("FlightInfoHub");

            connection.Start().Wait();
            hub.Invoke("UpdateFlightInfoBoard", departures);
        }

    }
}
