using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project2.Models;

namespace Project2
{
    public partial class ShowHomework : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int HomId = int.Parse(Request.QueryString["HomId"]);
            CourseContext cc= new CourseContext();
            var homework = (from c in cc.Homeworks
                        where c.HomId.Equals(HomId)
                        select c).First();
            HomworkNameLabel.Text = homework.HomeworkName ;
            HomworkDescLabel.Text = homework.HomeworkDesc;
            DueDateLabel.Text = "Due Date:"+ homework.DueDate.ToShortDateString();

        }

        protected void CreateGroupButton_Click(object sender, EventArgs e)
        {
            string url = "team/CreateTeam.aspx?HomId=" + Request.QueryString["HomId"];
            Response.Redirect(url);
        }
    }
}