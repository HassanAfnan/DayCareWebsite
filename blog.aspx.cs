using DayCareWebsite.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DayCareWebsite
{
    public partial class blog : System.Web.UI.Page
    {
        Connection gcon = new Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gcon.getConnection();
            gcon.ExecuteQuery("insert into Blog values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now + "')");
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void Show()
        {
            gcon.getConnection();           
            SqlCommand com = new SqlCommand("insert into Blog values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now + "')", gcon.getConnection());
            cmd.CommandText = "select * from Blog order by date desc";
            cmd.Connection = gcon.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "Comment");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}