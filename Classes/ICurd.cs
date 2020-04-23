using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DayCareWebsite.Classes
{
    interface ICurd<T>
    {
        void Add(T s);
        void Update(T s);
        void Delete(T s);
        T Search(T s);
        List<T> GetIds();
        StringReader Recipt(T a);
    }
}
