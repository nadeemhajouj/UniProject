using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Teacher
    {
        public Teacher()
        {
            this.Courses = new HashSet<Course>();
        }

        [ScaffoldColumn(false)]
        public int TeacherId { get; set; }

        public string UserId { get; set; }

        [Required, StringLength(20)]
        public string FirstName { get; set; }

        [Required, StringLength(20)]
        public string LastName { get; set; }

        public virtual ICollection<Course> Courses { get; set; }
    }
}