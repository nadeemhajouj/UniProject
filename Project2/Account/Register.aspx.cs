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



                result = manager.AddToRole(user.Id, "Student");

                var std = new Student();
                std.FirstName = FirstName.Text;
                std.LastName = lastName.Text;
                std.UserId = user.Id;
                std.AcademicYear = int.Parse(SelectAcademicYear.SelectedItem.Text);
                std.Departement = SelectDepartement.SelectedItem.Text;
                std.BirthDate = DateTime.Parse(DateofBirth.Text);
                std.Email = EmailAddress.Text;
                CourseContext cc = new CourseContext();
                cc.Students.Add(std);
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