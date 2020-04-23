using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class Login
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string role { get; set; }

        public bool cond = false;
        //   public SqlConnection gcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dayCareWebsite"].ToString());
        public Connection connection = new Connection();
        public void GetLogin(Login lo)
        {
            // gcon.Open();
            connection.getConnection();
            SqlCommand com = new SqlCommand("Select * from login where email ='" + lo.Email + "' and password = '" + lo.Password + "'",/*gcon*/connection.con);
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                string Email = rd["email"].ToString();
                string Password = rd["password"].ToString();
                if (Email == lo.Email && Password == lo.Password)
                {
                    cond = true;
                    lo.role = rd["role"].ToString();
                }
            }
        }
    }
}