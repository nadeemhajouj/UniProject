using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Project2.Models;

namespace Project2.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = new UserManager();
            var user = new ApplicationUser() { UserName = UserName.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {



                result = manager.AddToRole(user.Id, "Teacher");

                var std = new Teacher();
                std.FirstName = FirstName.Text;
                std.LastName = lastName.Text;
                std.UserId = user.Id;
                //std.BirthDate = DateTime.Now;

                CourseContext cc = new CourseContext();
                cc.Teachers.Add(std);
                cc.SaveChanges();
                
                
                IdentityHelper.SignIn(manager, user, isPersistent: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

                
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}