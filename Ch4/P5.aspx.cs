using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace _230801347.Ch4
{
    public partial class P5 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            _230801347.Extra.DatabaseInitializer.EnsureFreshDatabase();
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=ch4;Integrated Security=True");
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                //string query = "truncate table P5";
                //SqlDataAdapter dapt = new SqlDataAdapter(query, con);
                //DataTable dt = new DataTable();
                //dapt.Fill(dt);
                //if (!IsPostBack)
                //{
                //    display();
                //}
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string query = "insert into P5 values ('" + txtUser.Text + "','" + txtEmail.Text + "','" + txtPass.Text + "')";
            //disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);

            //connected
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            //display();
            HttpCookie cookie = new HttpCookie("user");
            cookie.Values["uname"] = txtUser.Text;
            cookie.Values["password"] = txtPass.Text;
            cookie.Expires = DateTime.Now.AddSeconds(240);
            Response.Cookies.Add(cookie);
            //lblResult.Text = Request.Cookies["user"]["uname"].ToString() + "<br>";
            //lblResult.Text += Request.Cookies["user"]["password"].ToString();
            //lblResult.Text = "";
            //foreach (string item in cookie.Values.AllKeys)
            //{
            //    lblResult.Text += item + ":" + cookie.Values[item] + "<br>";
            //}
            txtUser.Text = txtEmail.Text = txtPass.Text = txtConfirm.Text = "";
            txtLoginUser.Focus();
        }

        public void display()
        {
            string query = "select * from P5";
            //disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);

            //connected
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            //con.Close();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string query = "select id from P5 where uname = '" + txtLoginUser.Text + "' AND password = '" + txtLoginPass.Text + "'";
            //disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //    Response.Redirect("~/Extra/WebForm1.aspx?uname=" + txtLoginUser.Text);
                Session["uname"] = txtLoginUser.Text;
                Session["id"] = dt.Rows[0]["id"].ToString();
                Response.Redirect("~/Extra/WebForm1.aspx");
            }

            //connected
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            //con.Close();
        }

        protected void txtLoginUser_TextChanged(object sender, EventArgs e)
        {
            if (Request.Cookies["user"] != null)
            {
                if (txtLoginUser.Text == Request.Cookies["user"]["uname"].ToString())
                {
                    txtLoginPass.Attributes.Add("value", Request.Cookies["user"]["password"].ToString());
                }
            }
        }
    }
}