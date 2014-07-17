using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Homework
    {

        public Homework()
        {
            this.Projects = new HashSet<Project>();
        }

        [ScaffoldColumn(false), Key]
        public int HomId { get; set; }

        [Required, StringLength(100)]
        public string HomeworkName { get; set; }

        [Required, StringLength(1000), DataType(DataType.MultilineText)]
        public string HomeworkDesc { get; set; }

        [Required, DataType(DataType.DateTime)]
        public string Date { get; set; }

        [Required, DataType(DataType.DateTime)]
        public string DueDate { get; set; }

        public int CourseId { get; set; }

        public virtual ICollection<Project> Projects { get; set; }
    }
}