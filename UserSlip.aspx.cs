using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data.SqlClient;

namespace DayCareWebsite
{
    public partial class UserSlip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string em = "";
            string id = "";
            string fee = "";
            Classes.FeeSlip fe = new Classes.FeeSlip();
            if (Session["UserInfo"] == null)
            {
                Response.Write("<script>alert('Please login first')</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                em = Session["UserInfo"].ToString();
            }
            Classes.Connection connection = new Classes.Connection();
            connection.getConnection();
            SqlCommand com = new SqlCommand("select Uid,CName,GName from UserReg where email = '"+em+"'",connection.con);
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                id = rd["Uid"].ToString();
                fe.ChildName = rd["CName"].ToString();
                fe.GardianName = rd["GName"].ToString();
            }
            rd.Close();
            SqlCommand com1 = new SqlCommand("select Ammount from Fee where Uid = '"+id+"'",connection.con);
            SqlDataReader rd1 = com1.ExecuteReader();
            while (rd1.Read())
            {
                fee = rd1["Ammount"].ToString();
            }
            if(fee == "")
            {
                fe.Fee = "";
            }
            fe.Fee = fee;
            fe.Date = DateTime.Now;
            fe.DueDate = "10 days";
            fe.Recipt(fe);
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(fe.Recipt(fe));
            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Slip_" + fe.Date + ".pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
    }
}