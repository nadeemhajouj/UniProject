using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Project2.Models;
using System.Data.Entity;

namespace Project2.Logic
{
    public class MessageBuilder
    {
        private CourseContext cc = new CourseContext();
        ApplicationDbContext applicationDbContext = new ApplicationDbContext();
        public bool AddMessage(string msgHeader, string msgBody, string to, string from, DateTime dateTime)
        {
            try
            {
                Message message = new Message();
                message.MessHeader = msgHeader;
                message.From = from;
                message.To = to;
                message.MessBody = msgBody;
                message.MessDate = DateTime.Now;
                cc.Messages.Add(message);
                cc.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
            
        }
    }
}