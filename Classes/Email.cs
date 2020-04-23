using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class Email
    {
        public string email { get; set; }
        public string password { get; set; }
        Connection con = new Connection();
        public void SendEmail(Email e)
        {
            con.getConnection();
            SqlCommand com = new SqlCommand("select * from login", con.con);
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                string em = rd["email"].ToString();
                string pass = rd["password"].ToString();
                if (e.email == em)
                {
                    int a = 587;
                    SmtpClient clientDetails = new SmtpClient();
                    clientDetails.Port = Convert.ToInt32(a);
                    clientDetails.Host = "smtp.gmail.com";
                    clientDetails.EnableSsl = true;
                    clientDetails.DeliveryMethod = SmtpDeliveryMethod.Network;
                    clientDetails.UseDefaultCredentials = false;
                    clientDetails.Credentials = new NetworkCredential("appartmentmanagement200@gmail.com", "karachi94");
                    MailMessage mailDetails = new MailMessage();
                    mailDetails.From = new MailAddress("appartmentmanagement200@gmail.com");
                    mailDetails.To.Add(e.email);
                    mailDetails.Subject = "Password Recovery";
                    mailDetails.Body = pass;
                    clientDetails.Send(mailDetails);
                }
            }
        }
    }
}