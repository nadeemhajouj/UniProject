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
    public partial class AddAdver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string AdverAction = Request.QueryString["AdverAction"];
            if (AdverAction == "add")
            {
                SuccessAlert.Visible = true;
            }

        }

        protected void AddAdverButton_Click(object sender, EventArgs e)
        {

            string author = HttpContext.Current.User.Identity.GetUserId();
            AdvertisementBuilder AdverBuilder = new AdvertisementBuilder();
            bool addSuccess = AdverBuilder.AddAdvertisement(AnnouncementHeader.Text, AnnouncementBody.Text, SelectAcademicYear.SelectedItem.Text, 2, author);

            if (addSuccess)
            {
                // Reload the page.
                string pageUrl = Request.Url.AbsoluteUri.Substring(0,
                    Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
                Response.Redirect(pageUrl + "?AdverAction=add");
            }
        }
    }
}