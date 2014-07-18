using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Project2.Logic;
using Project2.Models;

namespace Project2.Account
{

    public partial class Messages : System.Web.UI.Page
    {
        private CourseContext cc = new CourseContext();
        private string userId;

        protected void Page_Load(object sender, EventArgs e)
        {
            userId = User.Identity.GetUserId();
        }

        protected void SendMessage_OnClick(object sender, EventArgs e)
        {
            ApplicationDbContext applicationDbContext = new ApplicationDbContext();
            MessageBuilder messageBuilder = new MessageBuilder();
            var toUser = (from u in applicationDbContext.Users
                where u.UserName.Equals(To.Text)
                select u).First();
            messageBuilder.AddMessage(Subject.Text, Body.Text, toUser.Id, User.Identity.GetUserId(), DateTime.Now);
        }

        public IQueryable<Message> GetRecMessages()
        {
            var messages = from m in cc.Messages
                where m.To.Equals(userId)
                select m;
            if (messages.Any())
                return messages;
            else
                return null;
        }

        public IEnumerable<Message> GetSentMessages()
        {
            
            var messages = from m in cc.Messages
                           where m.From.Equals(userId)
                           select m;
            if (messages.Any())
                return messages;
            else
                return null;
        }
    }
}