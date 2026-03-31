using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Extra
{
    public partial class C2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetThemeClass()
        {
            string path = (Request == null || string.IsNullOrEmpty(Request.AppRelativeCurrentExecutionFilePath))
                ? string.Empty
                : Request.AppRelativeCurrentExecutionFilePath.ToLowerInvariant();

            if (path.StartsWith("~/ch2/"))
            {
                return "theme-ch2";
            }

            if (path.StartsWith("~/ch3/"))
            {
                return "theme-ch3";
            }

            if (path.StartsWith("~/ch4/"))
            {
                return "theme-ch4";
            }

            return "theme-default";
        }
    }
}