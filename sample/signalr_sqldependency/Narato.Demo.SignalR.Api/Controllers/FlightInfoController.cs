using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Narato.Demo.SignalR.Data;
using Narato.Demo.SignalR.Common.ViewModel;
using System.Data.Entity;

namespace Narato.Demo.SignalR.Api.Controllers
{
    public class FlightInfoController : ApiController
    {
        [Route("")]
        [HttpGet]
        public HttpResponseMessage GetDepartures()
        {
            var model = new FlightInfoModel();
            var departures = model.Departures.ToList();
           
            return Request.CreateResponse(HttpStatusCode.Accepted, departures.Select(x => new DepartureViewModel(x)).ToList());
        }


        [Route("")]
        [HttpPost]
        public HttpResponseMessage  UpdateFlightInfo(Departure value)
        {
            var model1 = new FlightInfoModel();
            model1.Departures.ToList().ForEach(x => x.Action = null);
            model1.SaveChanges();



            var model = new FlightInfoModel();
            var toUpdate = model.Departures.First(x => x.Id== value.Id);
            toUpdate.Time = value.Time.TrimEnd();
            toUpdate.Destination = value.Destination.TrimEnd();
            toUpdate.FlightNo = value.FlightNo.TrimEnd();
            toUpdate.Gate = value.Gate.TrimEnd();
            toUpdate.Remarks = value.Remarks.TrimEnd();
            toUpdate.Action = "u";

            model.Entry(toUpdate).State = EntityState.Modified;

            model.SaveChanges();



            return Request.CreateResponse(HttpStatusCode.Accepted,new DepartureViewModel(value));
            
        }
    }
}
