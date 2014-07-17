using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project2.Models;

namespace Project2.Logic
{
                
    public class AdvertisementBuilder
    {
        public bool AddAdvertisement
            (string AdvertisementHeader, string AdvertisementBody, string AdvertisementYear, int CourseID, string Author)
        {
            var advertisement = new Advertisement();
            advertisement.AdvertisementID = 1;
            advertisement.AdvertisementHeader = AdvertisementHeader;
            advertisement.AdvertisementBody = AdvertisementBody;
            advertisement.AdvertisementYear = int.Parse(AdvertisementYear);
            advertisement.CourseID = CourseID;
            advertisement.Author = Author;
            advertisement.AdvertisementDateTime = DateTime.Now;


            using (CourseContext _db = new CourseContext())
            {
                // add to course


                var course = (from c in _db.Courses
                               where c.CourseID.Equals(CourseID)
                               select c).First();
                
                course.Advertisements.Add(advertisement);
                // Add Courses to DB.
                _db.Advertisements.Add(advertisement);
                _db.SaveChanges();
            }
            // Success.
            return true;
        }
    }
}