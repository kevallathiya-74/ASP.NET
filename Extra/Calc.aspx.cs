using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using _230801347.ServiceReference2;

namespace _230801347.Extra
{
    public partial class Calc : System.Web.UI.Page
    {
        WebService1SoapClient ws1;
        protected void Page_Load(object sender, EventArgs e)
        {
            ws1 = new WebService1SoapClient();
        }

        protected void btn_sum_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(val1.Text);
            int b = Convert.ToInt32(val2.Text);
            int sum = ws1.addition(a,b);
            lbl_ans.Text = "Answer is " + sum;
        }
    }
}