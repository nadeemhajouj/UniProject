using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project2.Models;

namespace Project2.Logic
{
    public class HomeworkBuilder
    {
        public bool AddHomework(string HomeworkName , string HomeworkDecs, DateTime DueDate ,int CourseId )
        {
            var homework = new Homework();
            homework.CourseId = CourseId;
            homework.Date = DateTime.Now;
            homework.DueDate = DueDate;
            homework.HomeworkDesc = HomeworkDecs;
            homework.HomeworkName = HomeworkName;
            using (CourseContext _db = new CourseContext())
            {
    
                // Add Courses to DB.
                _db.Homeworks.Add(homework);
                _db.SaveChanges();
            }
            // Success.
            return true;
           


        }


    }
}