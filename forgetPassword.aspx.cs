using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class forgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Classes.ForgetPassword fp = new Classes.ForgetPassword();
            fp.Email = TextBox1.Text;
            bool st = fp.SearchEmail(fp);
            if (st == true)
            {
                Response.Redirect("PasswordRecovery.aspx");
            }
            else
            {
                Response.Write("No Email Found");
            }
        }
    }
}