using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class ACMProblem
    {


        public ACMProblem()
        {
            this.ProbStds = new HashSet<ProbStd>();
        }

        [ScaffoldColumn(false), Key]
        public int ProbId { get; set; }

        [Required, StringLength(100)]
        public string ProbHeader { get; set; }

        [Required, StringLength(1000), DataType(DataType.MultilineText)]
        public string ProbBody { get; set; }

        [Required]
        public int ProbLevel { get; set; }

        [Required, StringLength(20)]
        public string ProbType { get; set; }

        public virtual ICollection<ProbStd> ProbStds { get; set; }
    }
}