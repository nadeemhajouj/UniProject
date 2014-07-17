using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Question
    {

        public Question()
        {
            this.Comments = new HashSet<Comment>();
        }

        [ScaffoldColumn(false), Key]
        public int QuesId { get; set; }

        [Required, StringLength(200)]
        public string QuesHeader { get; set; }

        [Required, StringLength(1000)]
        public string QuesBody { get; set; }

        public int CourseId { get; set; }

        public string AuthorId { get; set; }

        public virtual ICollection<Comment> Comments { get; set; }
    }
}