using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project2.Models;
using System.Data.Entity;

namespace Project2
{
    public partial class Projects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Project> getProjects()
        {
            CourseContext cc = new CourseContext();

            var query = from p in cc.Projects
                        select p;

            return query;
        }
    }
}