using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch3
{
    public partial class P8__Session_Redirect_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
            {
                lblResult.Text = "";
                lblResult.Text = Session["uname"].ToString();
            }
            if (Request.QueryString["uname"] != null && Request.QueryString["password"] != null)
            {
                Session.Abandon();
                lblResult.Text = "";
                lblResult.Text = Request.QueryString["uname"].ToString() + "<br>";
                lblResult.Text += Request.QueryString["password"].ToString();
            }
        }
    }
}