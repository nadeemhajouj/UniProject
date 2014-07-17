using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class StdCourse
    {
        [ScaffoldColumn(false), Key]
        public int StdCId { get; set; }

        public int CourseID { get; set; }

        public string StdId { get; set; }

        public int PracticeGrade { get; set; }

        public int ExamGrade { get; set; }
    }
}