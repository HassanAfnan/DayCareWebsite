using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace DayCareWebsite.Classes
{
    public class FeeSlip : ICurd<FeeSlip>
    {
        public string ChildName { get; set; }
        public string GardianName { get; set; }
        public string Fee { get; set; }
        public DateTime Date { get; set; }
        public string DueDate { get; set; }

        public void Add(FeeSlip s)
        {
            throw new NotImplementedException();
        }

        public void Delete(FeeSlip s)
        {
            throw new NotImplementedException();
        }

        public List<FeeSlip> GetIds()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(FeeSlip a)
        {
            string Name = a.ChildName;
            Random rn = new Random();
            string orderNo = "1222" + rn.Next(1, 10).ToString();
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[5] {
                            new DataColumn("Child Name", typeof(string)),
                            new DataColumn("Gardian Name", typeof(string)),
                            new DataColumn("Fee", typeof(string)),
                            new DataColumn("Date", typeof(string)),
                            new DataColumn("Valid for", typeof(string)),
                            });
            dt.Rows.Add(a.ChildName, a.GardianName, a.Fee, a.Date, a.DueDate);

            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();

                    //Generate Invoice (Bill) Header.
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                    sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Organization Slip</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td><b>Serial No: </b>");
                    sb.Append(orderNo);
                    sb.Append("</td><td align = 'right'><b>Date: </b>");
                    sb.Append(DateTime.Now);
                    sb.Append(" </td></tr>");
                    sb.Append("<tr><td colspan = '2'><b> Name: </b>");
                    sb.Append(Name);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("<tr><td align = 'right' colspan = '");
                    sb.Append(dt.Columns.Count - 1);
                    sb.Append("'></td>");
                    sb.Append("<td>");
                    //sb.Append(dt.Compute("sum(Total)", ""));
                    sb.Append("</td>");
                    sb.Append("</tr></table>");
                    sb.Append("<br />");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>.................Thanks For Generating Slip..............</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>...........“Children are great imitators. So give them something great to imitate.”..........</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>............................................................................................................................................................................</b></div>");
                    sb.Append("<br />");
                    sb.Append("<br />");
                    //Organization Slip
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                    sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Users Slip</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td><b>Serial No: </b>");
                    sb.Append(orderNo);
                    sb.Append("</td><td align = 'right'><b>Date: </b>");
                    sb.Append(DateTime.Now);
                    sb.Append(" </td></tr>");
                    sb.Append("<tr><td colspan = '2'><b> Name: </b>");
                    sb.Append(Name);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("<tr><td align = 'right' colspan = '");
                    sb.Append(dt.Columns.Count - 1);
                    sb.Append("'></td>");
                    sb.Append("<td>");
                    //sb.Append(dt.Compute("sum(Total)", ""));
                    sb.Append("</td>");
                    sb.Append("</tr></table>");
                    sb.Append("<br />");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>.................Thanks For Generating Slip..............</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>...........“Children are great imitators. So give them something great to imitate.”..........</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>............................................................................................................................................................................</b></div>");
                    //Export HTML String as PDF.
                    StringReader sr = new StringReader(sb.ToString());
                    return sr;

                }
            }

        }
        public FeeSlip Search(FeeSlip s)
        {
            throw new NotImplementedException();
        }

        public void Update(FeeSlip s)
        {
            throw new NotImplementedException();
        }
    }
}