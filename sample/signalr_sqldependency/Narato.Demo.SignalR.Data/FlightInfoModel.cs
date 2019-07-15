using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Narato.Demo.SignalR.Data
{
    public class FlightInfoModel : DbContext
    {
        public FlightInfoModel():base("DepartureDB")
        {}

        public DbSet<Departure> Departures { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
