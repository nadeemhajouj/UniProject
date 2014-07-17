using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Advertisement
    {

        [ScaffoldColumn(false)]
        public int AdvertisementID { get; set; }

        [Required, StringLength(100), Display(Name = "Advertisement Header")]
        public string AdvertisementHeader { get; set; }

        [Required, StringLength(1000), Display(Name = "Advertisement Body"), DataType(DataType.MultilineText)]
        public string AdvertisementBody { get; set; }

        [Required, DataType(DataType.DateTime)]
        public DateTime AdvertisementDateTime { get; set; }

        [Required, Display(Name = "Advertisement Year")]
        public int AdvertisementYear { get; set; }

        public string ImagePath { get; set; }

        public int? CourseID { get; set; }

        public string Author { get; set; }

    }
}