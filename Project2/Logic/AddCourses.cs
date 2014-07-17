using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project2.Models;

namespace Project2.Logic
{
    public class AddCourses
    {
        public bool AddCourse(string CourseName, string CourseDesc, string CourseTeacherFN,string CourseTeacherLN, string CourseYear, string CourseDep)
        {
            var myCourse = new Course();
            myCourse.CourseName = CourseName;
            myCourse.CourseDescription = CourseDesc;
            myCourse.CourseYear = int.Parse(CourseYear);
            myCourse.CourseDepartement = CourseDep;
            
            
            using (CourseContext _db = new CourseContext())
            {
                var teacher = (from t in _db.Teachers
                              where t.FirstName.Equals(CourseTeacherFN)&& t.LastName.Equals(CourseTeacherLN)
                              select t).First();
                myCourse.Teachers.Add(teacher);
                teacher.Courses.Add(myCourse);
                // Add Courses to DB.
                _db.Courses.Add(myCourse);
                _db.SaveChanges();
            }
            // Success.
            return true;
        }
    }
}