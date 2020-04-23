using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class EventsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/events/") + filename);
                Image1.ImageUrl = "~/events/" + filename;
                Label1.Text = "~/events/" + filename;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Classes.ClearText cl = new Classes.ClearText();
            Classes.Events ev = new Classes.Events();
            ev.Name = TextBox1.Text;
            ev.Description = TextBox2.Text;
            ev.EventsPic = Label1.Text;
            ev.Date = TextBox3.Text;
            ev.Time = TextBox4.Text;
            ev.Add(ev);
            Response.Write("<script>alert('Sucessfully Inserted')</script>");
            cl.ClearTextbox(TextBox1,TextBox2,TextBox3,TextBox4);
            Label1.Text = "";
            Image1.ImageUrl = "";
        }
    }
}