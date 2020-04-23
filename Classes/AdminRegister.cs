using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class AdminRegister
    {
        public string Aid { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public string role = "Admin";

        public void signUp(AdminRegister a)
        {
            Connection gcon = new Connection();
           // gcon.getConnection();
            gcon.ExecuteQuery("insert into AdminReg values ('"+a.Name+"','"+a.Email+"','"+a.Password+"','"+a.role+"')");
            gcon.ExecuteQuery("insert into login values('"+a.Email+ "','" + a.Password + "','" + a.role + "')");
        }

    }
}