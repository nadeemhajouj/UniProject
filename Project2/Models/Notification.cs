using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Notification
    {
        [ScaffoldColumn(false), Key]
        public int NotId { get; set; }

        [Required, DataType(DataType.DateTime)]
        public DateTime NotDate { get; set; }

        [Required, StringLength(100)]
        public string NotText { get; set; }

        public string UserId { get; set; }
    }
}