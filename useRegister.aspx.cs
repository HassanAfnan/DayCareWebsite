using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class useRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
                Image1.ImageUrl = "~/images/" + filename;
                Label1.Text = "~/images/" + filename;
            }
        }
        string gender = "";
        protected void Button2_Click(object sender, EventArgs e)
        {
            Classes.ClearText ct = new Classes.ClearText();
            Classes.UserRegister ad = new Classes.UserRegister();
            ad.CName = TextBox1.Text;
            if(RadioButton1.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }
            ad.Cgender = gender;
            ad.CAge = TextBox3.Text;
            ad.GName = TextBox4.Text;
            ad.Grelation = TextBox5.Text;
            ad.Email = TextBox6.Text;
            ad.Password = TextBox7.Text;
            ad.pic = Label1.Text;
            ad.signUp(ad);
            Response.Write("<script>alert('Successfully Registered')</script>");
            ct.ClearTextbox(TextBox1, TextBox3, TextBox4,TextBox5,TextBox6,TextBox7);
            Image1.ImageUrl = "";
            Label1.Text = "";
        }
    }
}