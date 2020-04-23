using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class UserRegister
    {
        public string Uid { get; set; }
        public string CName { get; set; }
        public string Cgender { get; set; }
        public string CAge { get; set; }
        public string GName { get; set; }
        public string Grelation { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string pic { get; set; }

        public string role = "User";

        public void signUp(UserRegister a)
        {
            Connection gcon = new Connection();
           // gcon.getConnection();
            gcon.ExecuteQuery("insert into UserReg values ('" + a.CName + "','"+a.Cgender+"','"+a.CAge+"','"+a.GName+"','"+a.Grelation+"','" + a.Email + "','" + a.Password + "','"+a.pic+"','" + a.role + "')");
            gcon.ExecuteQuery("insert into login values('" + a.Email + "','" + a.Password + "','" + a.role + "')");
        }

    }
}