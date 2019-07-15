using Microsoft.AspNet.SignalR;
using Narato.Demo.SignalR.Common.ViewModel;
using Narato.Demo.SignalR.Data;
using System.Collections.Generic;
using System.Linq;

namespace Narato.Demo.SignalR.Web.Hubs
{
    public class FlightInfoHub : Hub
    {
        public void UpdateFlightInfoBoard(List<Departure> updatedDepartures)
        {

            Clients.All.UpdateFlightBoardInfo(updatedDepartures.Select(x => new DepartureViewModel(x)).ToList());
        }
    }
}