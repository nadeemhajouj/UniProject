using Project2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace Project2.team
{
    public partial class ShowTeams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int teamId = int.Parse(Request.QueryString["teamId"]);

        }
        public IQueryable<Team> GetTeams()
        {
            string user = HttpContext.Current.User.Identity.GetUserId();
            CourseContext cc = new CourseContext();
            var student = (from s in cc.Students
                          where s.UserId.Equals(user)
                          select s).First();
            return student.Teams.AsQueryable();
        }

        public IQueryable<Homework> GetHomeworks() {

            int teamId = int.Parse(Request.QueryString["teamId"]);
            CourseContext cc = new CourseContext();

            var homeworks = from p in cc.Projects
                           join h in cc.Homeworks on p.HomId equals h.HomId
                           select h;
            return homeworks; 
        
        }
    }
}