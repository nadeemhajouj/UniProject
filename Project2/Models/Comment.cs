using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Comment
    {
        [ScaffoldColumn(false), Key]
        public int CommId { get; set; }

        [Required, StringLength(500)]
        public string CommText { get; set; }

        [Required, DataType(DataType.DateTime)]
        public DateTime CommDate { get; set; }

        public int PostId { get; set; }

        public string AuthorId { get; set; }
    }
}