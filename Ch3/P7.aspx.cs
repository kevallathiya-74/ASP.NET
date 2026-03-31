using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch3
{
    public partial class P7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("user");
            cookie.Values["uname"] = txtUsernm.Text;
            cookie.Values["password"] = txtPass.Text;
            cookie.Expires = DateTime.Now.AddSeconds(60);
            Response.Cookies.Add(cookie);
            //lblResult.Text = Request.Cookies["user"]["uname"].ToString() + "<br>";
            //lblResult.Text += Request.Cookies["user"]["password"].ToString();
            lblResult.Text = "";
            foreach (string item in cookie.Values.AllKeys)
            {
                lblResult.Text += item + ":" + cookie.Values[item] + "<br>";
            }
        }

        protected void btnSession_Click(object sender, EventArgs e)
        {
            Session["uname"] = txtUsernm.Text;
            Session["password"] = txtPass.Text;
            Response.Redirect("Session_Redirect.aspx");

        }

        protected void btnQueryString_Click(object sender, EventArgs e)
        {
            Response.Redirect("Session_Redirect.aspx?uname=" + txtUsernm.Text + "&password=" + txtPass.Text);
        }

        protected void btnViewState_Click(object sender, EventArgs e)
        {
            ViewState["uname"] = txtUsernm.Text;
            ViewState["password"] = txtPass.Text;
            txtUsernm.Text = txtPass.Text = "";

        }

        protected void btnViewStateRestore_Click(object sender, EventArgs e)
        {
            if (ViewState["uname"] != null)
            {
                txtUsernm.Text = ViewState["uname"].ToString();
            }
            if (ViewState["password"] != null)
            {
                txtPass.Text = ViewState["password"].ToString();
            }
        }

        protected void btnHiddenField_Click(object sender, EventArgs e)
        {
            HiddenField1.Value = txtPass.Text;
            txtUsernm.Text = HiddenField1.Value;
        }

        protected void btnCache_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            Cache["uname"] = txtUsernm.Text;
            lblResult.Text = "Cache : " + Cache["uname"].ToString();
        }
    }
}