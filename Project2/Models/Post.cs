using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project2.Models
{
    public class Post
    {

        public Post()
        {
            this.Comments = new HashSet<Comment>();
        }

        [ScaffoldColumn(false)]
        public int PostId { get; set; }

        [Required, StringLength(500)]
        public string PostText { get; set; }

        [Required, DataType(DataType.DateTime)]
        public DateTime PostDate { get; set; }

        public string AuthorId { get; set; }

        public virtual ICollection<Comment> Comments { get; set; }
    }
}