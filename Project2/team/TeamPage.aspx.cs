using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin;
using Project2.Models;

namespace Project2.team
{
	public partial class TeamPage : System.Web.UI.Page
	{
	    public int ProjectsNum;
	    public List<Project> projects;
		protected void Page_Load(object sender, EventArgs e)
		{
            int TeamId = int.Parse(Request.QueryString["TeamId"]);
		    CourseContext cc = new CourseContext();
            var projectsquery = from p in cc.Projects
                        where p.TeamId.Equals(TeamId)
                        select p;
		    ProjectsNum = projectsquery.ToList().Count;
		    projects = projectsquery.ToList();
		}

	    public void GetPosts()
	    {

	        Project project = projects.ElementAt(1);
           
            CourseContext cc = new CourseContext();
            var posts = from p in cc.Posts
                        where p.

	    }

	}
}