using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Project2.Models
{
    public class CourseDatabaseInitializer : DropCreateDatabaseIfModelChanges<CourseContext>
    {

        protected override void Seed(CourseContext context)
        {
            GetCourses().ForEach(c => context.Courses.Add(c));
            GetProjects().ForEach(p => context.Projects.Add(p));
            GetAdvertisements().ForEach(a => context.Advertisements.Add(a));
        }


        private static List<Advertisement> GetAdvertisements()
        {
            var Advertisements = new List<Advertisement>
            {
                new Advertisement
                {
                    AdvertisementID = 1,
                    AdvertisementHeader = "Compiler Project Advertisement",
                    AdvertisementDateTime = DateTime.Now,
                    AdvertisementBody = "This is a test Advertisement, tl7as tizi aloshi",
                    AdvertisementYear = 1,
                    CourseID = 1,
                    ImagePath = "img/Cancer.jpg"
                },
                new Advertisement
                {
                    AdvertisementID = 2,
                    AdvertisementHeader = "Automat Project Advertisement",
                    AdvertisementDateTime = DateTime.Now.Date,
                    AdvertisementBody = "This is a test Advertisement, tl7as tizi aloshi",
                    AdvertisementYear = 3,
                    ImagePath = "img/Cancer.jpg"
                },
            };
            return Advertisements;
        }

        private static List<Project> GetProjects()
        {
            var Projects = new List<Project> {
                new Project
                {
                    ProjectID = 1,
                    ProjectName = "Peer to Peer Evaluation System",
                   
                },
                new Project
                {
                    ProjectID = 2,
                    ProjectName = "Automatic Archving for Documents in ITE",
                  
                   
                }
            };
            return Projects;
        }

        private static List<Course> GetCourses()
        {
            var Courses = new List<Course> {
                    new Course
                    {
                        CourseID = 1,
                        CourseName = "Physics",
                        CourseDescription = "blalallasllsdsdf asdfbasjkdf  asdasdasd",
                        CourseYear = 1
                   },
                   new Course
                    {
                        CourseID = 2,
                        CourseName = "Algebra",
                        CourseDescription = "blalallasllsdsdf asdfbasjkdf  asdasdasd",
                        CourseYear = 1
                   },
                   new Course
                    {
                        CourseID = 3,
                        CourseName = "Programming 1",
                        CourseDescription = "blalallasllsdsdf asdfbasjkdf  asdasdasd",
                        CourseYear = 1
                   },
                   new Course
                    {
                        CourseID = 4,
                        CourseName = "Analysis 1",
                        CourseDescription = "blalallasllsdsdf asdfbasjkdf  asdasdasd",
                        CourseYear = 1
                   },
                   new Course
                   {
                       CourseID = 5,
                       CourseName = "Communication Skills",
                       CourseDescription = "jbt fia 60 ya 3rsat",
                       CourseYear = 1
                   },
                   new Course
                   {
                       CourseID = 6,
                       CourseName = "Compiler",
                       CourseDescription = "Weli l Polymorphism",
                       CourseYear = 4
                   }
                };
            return Courses;
        }
    }
}