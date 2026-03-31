using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Extra
{
    public partial class P10_User_Control : System.Web.UI.UserControl
    {
        public void setDateTime()
        {
            txt_dateTime.Text = DateTime.Now.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}