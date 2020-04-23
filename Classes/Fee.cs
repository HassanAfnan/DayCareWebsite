using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class Fee:ICurd<Fee>
    {
        public string Fid { get; set; }
        public int Uid { get; set; }
        public string name { get; set; }
        public string Amount { get; set; }
        public DateTime DateTimeNow { get; set; }
        Connection con = new Connection();
        public void Add(Fee s)
        {
            con.getConnection();
            con.ExecuteQuery("insert into Fee values('"+s.Uid+"','"+s.Amount+"','"+s.DateTimeNow+"')");
        }

        public void Delete(Fee s)
        {
            throw new NotImplementedException();
        }

        public List<Fee> GetIds()
        {
            List<Fee> a = new List<Fee>();
            string query = "select CName from UserReg";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Fee s = new Fee();
                s.name = rd["CName"].ToString();
                a.Add(s);
            }
            rd.Close();
            return a;
        }

        public Fee Search(Fee s)
        {
            throw new NotImplementedException();
        }

        public void Update(Fee s)
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Fee a)
        {
            throw new NotImplementedException();
        }
    }
}