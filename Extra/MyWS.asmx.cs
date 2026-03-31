using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace _230801347.Extra
{
    /// <summary>
    /// Summary description for MyWS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class MyWS : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string loop(string tname, string data)
        {
            string[] values = data.Split(',');
            string value = "";
            for (int i = 0; i < values.Length; i++)
            {
                value += "'"+values[i]+"'";
                if (i < values.Length-1)
                {
                    value += ",";
                }
            }
            string query = "insert into " + tname + " values("+value+")";
            return query;
        }
    }
}
