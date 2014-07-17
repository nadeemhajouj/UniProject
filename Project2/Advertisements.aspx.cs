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
            
        }

        public IQueryable<Advertisement> GetAdvertisements()
        {
            var query = from a in Courses.cc.Advertisements
                select a;

            return query;
        }
    }
}