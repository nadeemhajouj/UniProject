using System;
using System.Linq;
using Microsoft.Ajax.Utilities;
using Project2.Models;

namespace Project2
{
    public partial class Courses : System.Web.UI.Page
    {
        public static CourseContext cc = new CourseContext();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public IQueryable<Course> GetCourses1()
        {
            int academicYear = 1;

            if (string.IsNullOrWhiteSpace(Request.QueryString["aYear"]))
            {
                academicYear = 1;
            }
            else
            {
                academicYear = int.Parse(Request.QueryString["aYear"]);
            }

            
            if (academicYear == 1)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 1 && c.CourseSemester == false
                    select c;

                return query;
            }
            else if (academicYear == 2)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 2 && c.CourseSemester == false
                            select c;

                return query;
            }
            else if (academicYear == 3)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 3 && c.CourseSemester == false
                            select c;

                return query;
            }
            else if (academicYear == 4)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 4 && c.CourseSemester == false
                            select c;

                return query;
            }
            else
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 5 && c.CourseSemester == false
                            select c;

                return query;
            }
            return null; 
        }

        public IQueryable<Course> GetCourses2()
        {
            int academicYear = 1;

            if (string.IsNullOrWhiteSpace(Request.QueryString["aYear"]))
            {
                academicYear = 1;
            }
            else
            {
                academicYear = int.Parse(Request.QueryString["aYear"]);
            }


            if (academicYear == 1)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 1 && c.CourseSemester == true
                            select c;

                return query;
            }
            else if (academicYear == 2)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 2 && c.CourseSemester == true
                            select c;

                return query;
            }
            else if (academicYear == 3)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 3 && c.CourseSemester == true
                            select c;

                return query;
            }
            else if (academicYear == 4)
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 4 && c.CourseSemester == true
                            select c;

                return query;
            }
            else
            {
                var query = from c in cc.Courses
                            where c.CourseYear == 5 && c.CourseSemester == true
                            select c;

                return query;
            }
            return null;
        }

    }
}