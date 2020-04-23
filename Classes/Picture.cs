using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class Picture :ICurd<Picture>
    {
        public string Pid { get; set; }
        public string Descrption { get; set; }
        public string pic { get; set; }
        Connection con = new Connection();
        public void Add(Picture s)
        {
            con.getConnection();
            con.ExecuteQuery("insert into Picture values('"+s.Descrption+"','"+s.pic+"')");
        }

        public void Delete(Picture s)
        {
            throw new NotImplementedException();
        }

        public List<Picture> GetIds()
        {
            throw new NotImplementedException();
        }

        public Picture Search(Picture s)
        {
            throw new NotImplementedException();
        }

        public void Update(Picture s)
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Picture a)
        {
            throw new NotImplementedException();
        }
    }
}