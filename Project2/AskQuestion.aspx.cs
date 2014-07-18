using Project2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace Project2
{
    public partial class AskQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void AddQuestionButton_Click(object sender, EventArgs e)
        {
            int CourseId = int.Parse(Request.QueryString["CourseId"]);
            string userId = HttpContext.Current.User.Identity.GetUserId();
            CourseContext cc = new CourseContext();
            var student = from c in cc.Students
                        where c.UserId == userId
                        select c;
            using (CourseContext _db = new CourseContext())
            {
                var question = new Question();
                question.AuthorId = userId; 
                question.CourseId= CourseId;
                question.QuesBody =  AddQuestionBody.Text;
                question.QuesHeader = AddQuestionHeader.Text;

                _db.Questions.Add(question);
                _db.SaveChanges();
            }
 
        }
    }
}