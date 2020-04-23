using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class PicturePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/pictures/") + filename);
                Image1.ImageUrl = "~/pictures/" + filename;
                Label1.Text = "~/pictures/" + filename;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Classes.Picture pi = new Classes.Picture();
            pi.Descrption = TextBox1.Text;
            pi.pic = Label1.Text;
            pi.Add(pi);
            Response.Write("<script>alert('Successfully Inserted')</script>");
            TextBox1.Text = "";
            Label1.Text = "";
            Image1.ImageUrl = "";
        }
    }
}