using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class AdminReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Classes.ClearText ct = new Classes.ClearText();
            Classes.AdminRegister ad = new Classes.AdminRegister();
            ad.Name = TextBox1.Text;
            ad.Email = TextBox2.Text;
            ad.Password = TextBox3.Text;
            ad.signUp(ad);
            Response.Write("<script>alert('Successfully Registered')</script>");
            ct.ClearTextbox(TextBox1,TextBox2,TextBox3);
        }
    }
}