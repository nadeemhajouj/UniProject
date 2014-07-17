using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class ProbStd
    {
        [ScaffoldColumn(false)]
        public int ProbStdId { get; set; }

        public int ProbId { get; set; }

        public string StdId { get; set; }

        public string Result { get; set; }
    }
}