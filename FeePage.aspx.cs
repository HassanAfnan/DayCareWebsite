using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DayCareWebsite
{
    public partial class FeePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetName();
            }
        }
        Classes.Fee fe = new Classes.Fee();
        private void GetName()
        {
            DropDownList1.Items.Clear();
            foreach (var item in fe.GetIds())
            {
                DropDownList1.Items.Add(Convert.ToString(item.name));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Classes.Connection con = new Classes.Connection();
            con.getConnection();
            SqlCommand com = new SqlCommand("select Uid from UserReg where CName ='"+DropDownList1.Text+"'",con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                fe.Uid = Convert.ToInt32(rd["Uid"]);
            }
            fe.Amount = TextBox1.Text;
            fe.DateTimeNow = DateTime.Now;
            fe.Add(fe);
            Response.Write("<script>alert('Sucessfully Inserted')</script>");
            TextBox1.Text = "";
        }
    }
}