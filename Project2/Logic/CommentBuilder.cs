using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project2.Models;

namespace Project2.Logic
{
    public class CommentBuilder
    {
        public bool AddComment(string CommText, int PostId, string AuthorId)
        {
            var comment = new Comment();
            comment.AuthorId = AuthorId;
            comment.CommDate = DateTime.Now;
            comment.CommText = CommText;
            comment.PostId = PostId;

            using (CourseContext _db = new CourseContext())
            {
                var post = (from p in _db.Posts
                               where  p.PostId.Equals(PostId)
                               select p).First();
                post.Comments.Add(comment);
                // Add Courses to DB.
                _db.Comments.Add(comment);
                _db.SaveChanges();
            }
            // Success.
            return true;


        }
    }
}