using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Project2.Models;

namespace Project2
{
    public partial class CourseInfo : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = User.Identity.GetUserId();
            int CourseId = int.Parse(Request.QueryString["id"]);

            using (CourseContext cc = new CourseContext())
            {
                var check = from c in cc.StdCourses
                    where c.CourseID == CourseId && c.StdId == userId
                    select c;

                if (check.Any())
                    UnfollowCourse.Visible = true;
                else
                    FollowCourse.Visible = true;
            }

            

            txtCourse.Text = Request.QueryString["name"];
            courseName.Text = Request.QueryString["name"];
            txtHeader.Text = Request.QueryString["name"];

            txtTeacher.Text = Request.QueryString["teacherFN"] + " " + Request.QueryString["teacherLN"] ;
            
            txtDesc.Text = Request.QueryString["desc"];

            txtYear.Text = Request.QueryString["year"];
            

            if (string.IsNullOrWhiteSpace(Request.QueryString["year"]))
                courseYear.Text = "";
            else if(int.Parse(Request.QueryString["year"]) == 1)
                courseYear.Text = "First Year";
            else if (int.Parse(Request.QueryString["year"]) == 2)
                courseYear.Text = "Second Year";
            else if (int.Parse(Request.QueryString["year"]) == 3)
                courseYear.Text = "Third Year";
            else if (int.Parse(Request.QueryString["year"]) == 4)
                courseYear.Text = "Fourth Year";
            else if (int.Parse(Request.QueryString["year"]) == 5)
                courseYear.Text = "Fifth Year";

            /*string txt = (string)(Session["name"]);
            txtcourse.Text = txt;
            courseName.Text = txt;*/
        }
        protected void AddHomeworkButton_Click(object sender, EventArgs e)
        {
            string url = "AddHomework.aspx?CourseId=" + Request.QueryString["id"];
            Response.Redirect(url);
        }

        public IQueryable<Homework> GetHomeworks()
        {
            int CourseId = int.Parse(Request.QueryString["id"]);
            CourseContext cc = new CourseContext();
            var query = from c in cc.Homeworks
                        where c.CourseId.Equals(CourseId)
                        select c;
            return query;


        }

        protected void FollowCourse_OnClick(object sender, EventArgs e)
        {
            string userId = User.Identity.GetUserId();
            int CourseId = int.Parse(Request.QueryString["id"]);
            using (CourseContext cc = new CourseContext())
            {
                var std = (from s in cc.Students
                    where s.UserId == userId
                    select s).First();

                var cou = (from c in cc.Courses
                    where c.CourseID == CourseId
                    select c).First();

                var stdCou = new StdCourse();
                stdCou.CourseID = CourseId;
                stdCou.StdId = userId;

                std.StdCourses.Add(stdCou);
                cou.StdCourses.Add(stdCou);

                cc.SaveChanges();
            }

            string url = "CourseInfo.aspx?name=" + Request.QueryString["name"] +
                         "&teacherFN=" + Request.QueryString["teacherFN"] + "&teacherLN=" +
                         Request.QueryString["teacherLN"] +
                         "&desc=" + Request.QueryString["desc"] + "&year=" + Request.QueryString["year"] +
                         "&id=" + CourseId;

            Response.Redirect(url);

        }

        protected void AddAnnouncementButton_Click(object sender, EventArgs e)
        {
            string url = "AddAdver.aspx?CourseId=" + Request.QueryString["id"];
            Response.Redirect(url);
        }

        protected void UnfollowCourse_OnClick(object sender, EventArgs e)
        {
            string userId = User.Identity.GetUserId();
            int CourseId = int.Parse(Request.QueryString["id"]);

            using (CourseContext cc = new CourseContext())
            {
                var check = (from c in cc.StdCourses
                    where c.CourseID == CourseId && c.StdId == userId
                    select c).First();


                cc.StdCourses.Remove(check);
                cc.SaveChanges();

            }

            string url = "CourseInfo.aspx?name=" + Request.QueryString["name"] +
                         "&teacherFN=" + Request.QueryString["teacherFN"] + "&teacherLN=" +
                         Request.QueryString["teacherLN"] +
                         "&desc=" + Request.QueryString["desc"] + "&year=" + Request.QueryString["year"] +
                         "&id=" + CourseId;

            Response.Redirect(url);
        }
    }
}