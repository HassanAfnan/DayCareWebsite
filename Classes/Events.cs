using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace DayCareWebsite.Classes
{
    public class Events : ICurd<Events>
    {
        public string Eid { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string EventsPic { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }

        Connection con = new Connection();
        public void Add(Events s)
        {
            con.getConnection();
            con.ExecuteQuery("insert into Events values('"+s.Name+"','"+s.Description+"','"+s.EventsPic+"','"+s.Date+"','"+s.Time+"')");
        }

        public void Delete(Events s)
        {
            throw new NotImplementedException();
        }

        public List<Events> GetIds()
        {
            throw new NotImplementedException();
        }

        public Events Search(Events s)
        {
            throw new NotImplementedException();
        }

        public void Update(Events s)
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Events a)
        {
            throw new NotImplementedException();
        }
    }
}