using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace Project2.Models
{
    public class Project
    {


        public Project()
        {
            this.Teachers = new HashSet<Teacher>();
        }

        [ScaffoldColumn(false)]
        public int ProjectID { get; set; }

        [Required, StringLength(100), Display(Name = "Project Name")]
        public string ProjectName { get; set; }

        [Required, StringLength(1000), Display(Name = "Project Description"), DataType(DataType.MultilineText)]
        public string ProjectAbstract { get; set; }

        [Required, DataType(DataType.DateTime)]
        public DataType Date { get; set; }

        public string ImagePath { get; set; }

        public int HomId { get; set; }

        public int TeamId { get; set; }

        public virtual ICollection<Teacher> Teachers { get; set; }

    }
}