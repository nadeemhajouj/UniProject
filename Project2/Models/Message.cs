using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Message
    {
        [ScaffoldColumn(false), Key]
        public int MessId { get; set; }

        [Required, StringLength(100)]
        public string MessHeader { get; set; }

        [Required, StringLength(1000), DataType(DataType.MultilineText)]
        public string MessBody { get; set; }

        [Required, DataType(DataType.DateTime)]
        public DateTime MessDate { get; set; }

        public string To { get; set; }

        public string From { get; set; }
    }
}