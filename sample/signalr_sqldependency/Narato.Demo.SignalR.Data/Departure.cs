using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Narato.Demo.SignalR.Data
{
    public class Departure
    {
        [Key]
        public int Id { get; set; }
        [Column(Order = 0)]
        public string Time { get; set; }
        [Column(Order = 1)]
        public string Destination { get; set; }
        [Column(Order = 2)]
        public string FlightNo { get; set; }
        [Column(Order = 3)]
        public string Gate { get; set; }
        [Column(Order = 4)]
        public string Remarks { get; set; }
        [Column(Order = 5)]
        public string Action { get; set; }
    }
}
