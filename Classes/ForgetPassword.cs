using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class ForgetPassword
    {
        public string Email { get; set; }
        public bool cond = false;
        Connection con = new Connection();
        public bool SearchEmail(ForgetPassword f)
        {
            con.getConnection();
            SqlCommand com = new SqlCommand("select email from login", con.con);
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                string email = rd["email"].ToString();
                if (f.Email == email)
                {
                    cond = true;
                }
            }
            return cond;
        }
    }
}