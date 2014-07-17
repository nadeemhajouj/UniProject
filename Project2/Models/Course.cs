using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Project2.Models
{
    public class Course
    {

        public Course()
        {
            this.Teachers = new HashSet<Teacher>();
            this.Homeworks = new HashSet<Homework>();
            this.Advertisements = new HashSet<Advertisement>();
            this.StdCourses = new HashSet<StdCourse>();
            this.Questions = new HashSet<Question>();
        }

        [ScaffoldColumn(false)]
        public int CourseID { get; set; }

        [Required, Display(Name = "Course Year")]
        public int CourseYear { get; set; }

        [Required, StringLength(50), Display(Name = "Course Name")]
        public string CourseName { get; set; }

        [Required, StringLength(10000), Display(Name = "Course Description"), DataType(DataType.MultilineText)]
        public string CourseDescription { get; set; }

        public string CourseDepartement { get; set; }

        public bool CourseSemester { get; set; }

        public virtual ICollection<Teacher> Teachers { get; set; }

        public virtual ICollection<Advertisement> Advertisements { get; set; }

        public virtual ICollection<Homework> Homeworks { get; set; }

        public virtual ICollection<StdCourse> StdCourses { get; set; }

        public virtual ICollection<Question> Questions { get; set; }

    }
}