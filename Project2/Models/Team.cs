using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Team
    {

        public Team()
        {
            this.Students = new HashSet<Student>();
            this.Projects = new HashSet<Project>();
        }

        [ScaffoldColumn(false)]
        public int TeamId { get; set; }

        [Required, StringLength(50)]
        public string TeamName { get; set; }

        public virtual ICollection<Student> Students { get; set; }

        public virtual ICollection<Project> Projects { get; set; }

        public string AdminId { get; set; }
    }
}