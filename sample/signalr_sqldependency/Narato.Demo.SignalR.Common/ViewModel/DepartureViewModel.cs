using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Narato.Demo.SignalR.Data;

namespace Narato.Demo.SignalR.Common.ViewModel
{
    public class DepartureViewModel
    {
        private Departure _departure;
        public DepartureViewModel(Departure departure)
        {
            _departure = departure;
        }

        public int Id => _departure.Id;
        public string DisplayId => AddSpacesBefore(_departure.Id.ToString(), 3);
        public string Time => AddSpaces(_departure.Time, 5);
        public string Destination => AddSpaces(_departure.Destination, 20);
        public string Gate => AddSpaces( _departure.Gate, 6);
        public string Remarks => AddSpaces(_departure.Remarks, 15);
        public string FlightNo => AddSpaces(_departure.FlightNo, 9);

        string AddSpaces(string value, int numberOfCharacters)
        {
            string returnValue = value;
            for (int i = value.Length; i < numberOfCharacters; i++)
            {
                returnValue += " ";
            }

            return returnValue;
        }

        string AddSpacesBefore(string value, int numberOfCharacters)
        {
            string returnValue = value;
            for (int i = value.Length; i < numberOfCharacters; i++)
            {
                returnValue = " " + returnValue;
            }

            return returnValue;
        }
    }
}