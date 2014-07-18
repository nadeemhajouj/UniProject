using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Project2.Models;

namespace Project2.Account
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = User.Identity.GetUserId();

            using (CourseContext cc = new CourseContext())
            {
                 var std = (from s in cc.Students
                           where s.UserId == userId
                           select s).First();

                FirstName.Text = std.FirstName;
                LastName.Text = std.LastName;
                BirthDate.Text = std.BirthDate.ToShortDateString();
                Email.Text = std.Email;
                Departement.Text = std.Departement;
                ACMPoints.Text = std.ACMPoints.ToString();
                Bio.Text = std.Bio;

            }
        }
    }
}