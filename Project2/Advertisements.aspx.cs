using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project2.Models;

namespace Project2
{
    public partial class Advertisements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("Administrator"))
            {
                AddAdverButton.Visible = true;

            }

        }
        protected void AddAdverButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("AddAdver.aspx");
        }

        public IQueryable<Advertisement> GetAdvertisements()
        {
            CourseContext cc = new CourseContext();
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
                var query = from c in cc.Advertisements
                            where c.AdvertisementYear == 1
                            select c;

                return query;
            }
            else if (academicYear == 2)
            {
                var query = from c in cc.Advertisements
                            where c.AdvertisementYear == 2
                            select c;

                return query;
            }
            else if (academicYear == 3)
            {
                var query = from c in cc.Advertisements
                            where c.AdvertisementYear == 3
                            select c;

                return query;
            }
            else if (academicYear == 4)
            {
                var query = from c in cc.Advertisements
                            where c.AdvertisementYear == 4
                            select c;

                return query;
            }
            else
            {
                var query = from c in cc.Advertisements
                            where c.AdvertisementYear == 5
                            select c;

                return query;
            }
            return null;
        }
    }
}