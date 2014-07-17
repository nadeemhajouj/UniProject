using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project2.Models;
using Project2.Logic;

namespace Project2.Admin
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CourseAction = Request.QueryString["CourseAction"];
            if (CourseAction == "add")
            {
                SuccessAlert.Visible = true;
            }

            if (CourseAction == "remove")
            {
                RemoveSuccessAlert.Visible = true;
            }
        }

        protected void AddCourseButton_Click(object sender, EventArgs e)
        {
            // Add Course data to DB.
            AddCourses Courses = new AddCourses();
            bool addSuccess = Courses.AddCourse(AddCourseName.Text, AddCourseDescription.Text,
                AddCourseTeacherFN.Text, AddCourseTeacherLN.Text, SelectCourseYear.SelectedItem.Text, SelectCourseDepartement.SelectedItem.Text);
            if (addSuccess)
            {
                // Reload the page.
                string pageUrl = Request.Url.AbsoluteUri.Substring(0,
                    Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                Response.Redirect(pageUrl + "?CourseAction=add");
            }
        }

        public IQueryable GetCourses()
        {
            var _db = new Project2.Models.CourseContext();
            IQueryable query = _db.Courses;
            return query;
        }

        protected void RemoveCourseButton_Click(object sender, EventArgs e)
        {
            using (var _db = new Project2.Models.CourseContext())
            {
                int courseId = Convert.ToInt16(DropDownRemoveCourse.SelectedValue);
                var myItem = (from c in _db.Courses where c.CourseID == courseId select c).FirstOrDefault();
                if (myItem != null)
                {
                    _db.Courses.Remove(myItem);
                    _db.SaveChanges();

                    // Reload the page.
                    string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                    Response.Redirect(pageUrl + "?CourseAction=remove");
                }
                else
                {
                    LabelRemoveStatus.Text = "Unable to locate Course.";
                }
            }
        }
    }
}