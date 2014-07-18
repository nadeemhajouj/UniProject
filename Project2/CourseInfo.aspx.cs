using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project2.Models;

namespace Project2
{
    public partial class CourseInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
        protected void AskAnExpert_Click(object sender, EventArgs e)
        {
            string url = "AskQuestion.aspx?CourseId=" + Request.QueryString["id"];
            Response.Redirect(url);
        }
        public IQueryable<Homework> GetHomeworks()
        {
            int CourseId = int.Parse(Request.QueryString["id"]);
            CourseContext cc = new CourseContext();
            var query = from c in cc.Homeworks
                        where c.CourseId.Equals(CourseId)
                        select c;
            Homework hh = query.First();
            return query;


        }
    }
}