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
    public partial class P3 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            _230801347.Extra.DatabaseInitializer.EnsureFreshDatabase();
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=ch4;Integrated Security=True");
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                lbl_status.ForeColor = System.Drawing.Color.Green;
                lbl_status.Text = "Connection established...";
                //string query = "truncate table P3";
                //SqlDataAdapter dapt = new SqlDataAdapter(query, con);
                //DataTable dt = new DataTable();
                //dapt.Fill(dt);
                if (!IsPostBack)
                {
                    display();
                }
            }
            else
            {
                lbl_status.ForeColor = System.Drawing.Color.Red;
                lbl_status.Text = "Connection failed...";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lbl_status.Text = "";
            string query = "insert into P3 values ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + Convert.ToInt32(txtAge.Text) + "')";
            //disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);

            //connected
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            display();
            lbl_status.Text = "Record inserted";
            txtName.Text = txtEmail.Text = txtPassword.Text = txtAge.Text = "";
        }
        public void display()
        {
            string query = "select * from P3";
            //disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            DataList1.DataSource = dt;
            DataList1.DataBind();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            //connected
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            //GridView1.DataSource = dr;
            //GridView1.DataBind();
            //con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = GridView1.SelectedRow.Cells[4].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[5].Text;
            txtPassword.Attributes.Add("value", GridView1.SelectedRow.Cells[6].Text);
            txtConfirm.Attributes.Add("value", GridView1.SelectedRow.Cells[6].Text);
            txtAge.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            display();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string query = "delete from P3 where id = '" + id + "'";
            //Disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);

            //Connected
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            display();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            display();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            TextBox txtName = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
            TextBox txtEmail = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
            TextBox txtPassword = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
            TextBox txtAge = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0];
            string query = "update P3 set name = '" + txtName.Text + "',email = '" + txtEmail.Text + "',password = '" + txtPassword.Text + "',age = '" + txtAge.Text + "' where id = '" + id + "'";
            //Disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);

            //Connected
            //SqlCommand cmd = new SqlCommand(query, con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            GridView1.EditIndex = -1;
            display();
        }
    }
}