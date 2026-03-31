using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace _230801347.Ch4
{
    public partial class P1 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            _230801347.Extra.DatabaseInitializer.EnsureFreshDatabase();
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=ch4;Integrated Security=True");
            con.Open();
            if (con.State == ConnectionState.Open)
            {
                conState.ForeColor = System.Drawing.Color.Green;
                conState.Text = "Connection established...";
                display();
                nextRno();
            }
            else
            {
                conState.ForeColor = System.Drawing.Color.Red;
                conState.Text = "Connection failed...";
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            conState.Text = "";
            string query = "insert into stud values ('" + txtName.Text + "','" + ddlOptions.SelectedValue.ToString() + "')";
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            display();
            txtName.Text = "";
            ddlOptions.SelectedValue = "";
            nextRno();
        }

        public void display()
        {
            string query = "select * from stud";
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            conState.Text = "";
            string query = "delete from stud where city = '" + ddlOptions.SelectedValue.ToString() + "'";
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            display();
            txtName.Text = "";
            ddlOptions.SelectedValue = "";
            nextRno();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conState.Text = "";
            string query = "update stud set city = '" + ddlOptions.SelectedValue.ToString() + "' where name = '" + txtName.Text + "'";
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            display();
            txtName.Text = "";
            ddlOptions.SelectedValue = "";
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            conState.Text = "";
            string query = "select * from stud where name = '" + txtName.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtRoll.Text = dr["rno"].ToString();
                txtName.Text = dr["name"].ToString();
                ddlOptions.SelectedValue = dr["city"].ToString();
            }
            else
            {
                txtRoll.Text = "";
                txtName.Text = "";
                ddlOptions.SelectedValue = "";
                conState.ForeColor = System.Drawing.Color.Red;
                conState.Text = "Data not found";
            }
        }

        public void nextRno()
        {
            con.Close();
            con.Open();
            string index = "select rno from stud";
            SqlCommand cmd = new SqlCommand(index, con);
            SqlDataReader dr = cmd.ExecuteReader();
            int id = 0;
            while (dr.Read())
            {
                int rno = Int32.Parse(dr["rno"].ToString());
                if (rno > id)
                {
                    id = rno;
                }
            }
            id = id + 1;
            txtRoll.Text = id.ToString();
            con.Close();
            con.Open();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            conState.Text = "";
            txtRoll.Text = "";
            txtName.Text = "";
            ddlOptions.SelectedValue = "";
            nextRno();
            //string query = "truncate table stud";
            //SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            //DataTable dt = new DataTable();
            //dapt.Fill(dt);
            //display();
        }
    }
}