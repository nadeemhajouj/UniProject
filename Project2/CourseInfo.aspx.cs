using System;
using System.Collections.Generic;
using System.IO;
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
        CourseContext cc = new CourseContext();
        Course thisCourse = new Course();
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = User.Identity.GetUserId();
            int CourseId = int.Parse(Request.QueryString["id"]);

            
                var check = from c in cc.StdCourses
                    where c.CourseID == CourseId && c.StdId == userId
                    select c;

                if (check.Any())
                    UnfollowCourse.Visible = true;
                else
                    FollowCourse.Visible = true;
            

            

            int courseId = int.Parse(Request.QueryString["id"]);
            thisCourse = (from c in cc.Courses
                where c.CourseID == CourseId
                select c).First();
            txtCourse.Text = Request.QueryString["name"];
            courseName.Text = Request.QueryString["name"];
           // txtHeader.Text = Request.QueryString["name"];

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

            if (!IsPostBack)
            {
                
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Files/"));
                List<ListItem> files = new List<ListItem>();
                foreach (Material material in thisCourse.Materials)
                {
                    files.Add(new ListItem(material.FilePath, "~/Files/"+material.FilePath));
                    
                }
                /*foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }*/
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
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
            var query = from c in cc.Homeworks
                        where c.CourseId.Equals(CourseId)
                        select c;
            if (query.Any())
            {
            return query;
            }
            else
            {
                return null;
            }



        }

        protected void FollowCourse_OnClick(object sender, EventArgs e)
        {
            string userId = User.Identity.GetUserId();
            int CourseId = int.Parse(Request.QueryString["id"]);
            using (cc)
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

                //std.StdCourses.Add(stdCou);
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

            using (cc)
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

        protected void uploadFile_Click(object sender, EventArgs e)
        {
            if (UploadImages.HasFiles)
            {
                foreach (HttpPostedFile uploadedFile in UploadImages.PostedFiles)
                {
                    uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Files/"),
                    uploadedFile.FileName)); listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName);
                    Material material = new Material();
                    material.FilePath = uploadedFile.FileName;
                    thisCourse.Materials.Add(material);
                    cc.SaveChanges();
                }
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            if (Path.GetExtension(filePath).Equals(".pdf"))
            {
              
                Response.Redirect(filePath);
            }
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}