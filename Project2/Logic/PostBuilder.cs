using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project2.Models;

namespace Project2.Logic
{
    public class PostBuilder
    {
        public bool AddPost(string PostText, string AuthorId)
        {
            var post = new Post();
            post.AuthorId = AuthorId;
            post.PostDate = DateTime.Now;
            post.PostText = PostText;

            using (CourseContext _db = new CourseContext())
            {
                // Add Courses to DB.
                _db.Posts.Add(post);
                _db.SaveChanges();
            }
            return true;

        }

    }
}