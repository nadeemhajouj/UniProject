using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Project2.Logic;

namespace Project2
{
    public partial class AddHomework : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string HomAction = Request.QueryString["HomAction"];
            if (HomAction == "add")
            {
                SuccessAlert.Visible = true;
            }
        }
        protected void AddHomeworkButton_Click(object sender, EventArgs e)
        {

            string author = HttpContext.Current.User.Identity.GetUserId();
            HomeworkBuilder homeworkBuilder = new HomeworkBuilder();
            DateTime DueDate = DateTime.Parse(DuDate.Text);
            int CourseId = int.Parse(Request.QueryString["CourseId"]) ;
            bool addSuccess = homeworkBuilder.AddHomework(HomeworkName.Text, HomeworkDesc.Text, DueDate,CourseId);


            if (addSuccess)
            {
                // add 
                // Reload the page.
                string pageUrl = Request.Url.AbsoluteUri.Substring(0,
                    Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                Response.Redirect(pageUrl + "?HomAction=add");
            }
        }

    }
}