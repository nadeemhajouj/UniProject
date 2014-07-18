using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Student
    {

        public Student()
        {
            this.StdCourses = new HashSet<StdCourse>();
        }

        [ScaffoldColumn(false)]
        public int StudentId { get; set; }

        public string UserId { get; set; }

        [Required, StringLength(20)]
        public string FirstName { get; set; }

        [Required, StringLength(20)]
        public string LastName { get; set; }

        public string Departement { get; set; }

        public int AcademicYear { get; set; }

        [DataType(DataType.DateTime)]
        public DateTime BirthDate { get; set; }

        public string Email { get; set; }

        public int ACMPoints { get; set; }

        [DataType(DataType.MultilineText)]
        public string Bio { get; set; }

        public virtual ICollection<StdCourse> StdCourses { get; set; }
    }
}