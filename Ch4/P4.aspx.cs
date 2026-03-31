using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace _230801347.Ch4
{
    public partial class P4 : System.Web.UI.Page
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
                //string query = "truncate table P4";
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            lbl_status.Text = "";
            string gender;
            if (rbFemale.Checked)
            {
                gender = "Female";
            }
            else if (rbMale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Other";
            }
            string contact = ddlCode.SelectedValue + txtPhone.Text.Trim();
            string hobby = string.Join(",", chk_hobby.Items.Cast<ListItem>().Where(item => item.Selected).Select(item => item.Text));

            if (!int.TryParse(txtAge.Text, out int age))
            {
                lbl_status.ForeColor = System.Drawing.Color.Red;
                lbl_status.Text = "Please enter a valid age.";
                return;
            }

            if (!int.TryParse(txtPin.Text, out int pinCode))
            {
                lbl_status.ForeColor = System.Drawing.Color.Red;
                lbl_status.Text = "Please enter a valid pin code.";
                return;
            }

            DateTime dob;
            if (!DateTime.TryParseExact(txtDob.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out dob) &&
                !DateTime.TryParse(txtDob.Text, CultureInfo.CurrentCulture, DateTimeStyles.None, out dob))
            {
                lbl_status.ForeColor = System.Drawing.Color.Red;
                lbl_status.Text = "Please enter a valid date of birth.";
                return;
            }

            string imgPath = string.Empty;
            if (fileUpload.HasFile)
            {
                string imageDirectory = Server.MapPath("~/Extra/Image/");
                if (!System.IO.Directory.Exists(imageDirectory))
                {
                    System.IO.Directory.CreateDirectory(imageDirectory);
                }

                string safeFileName = System.IO.Path.GetFileName(fileUpload.FileName);
                string fullImagePath = System.IO.Path.Combine(imageDirectory, safeFileName);
                fileUpload.SaveAs(fullImagePath);
                imgPath = "~/Extra/Image/" + safeFileName;
            }

            string query = @"INSERT INTO P4
                (fname, lname, gender, age, [date], email, password, contact, address, state, pincode, hobbies, photo)
                VALUES
                (@fname, @lname, @gender, @age, @dob, @email, @password, @contact, @address, @state, @pincode, @hobbies, @photo)";

            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.Add("@fname", SqlDbType.NVarChar, 100).Value = txtFname.Text.Trim();
                cmd.Parameters.Add("@lname", SqlDbType.NVarChar, 100).Value = txtLname.Text.Trim();
                cmd.Parameters.Add("@gender", SqlDbType.NVarChar, 20).Value = gender;
                cmd.Parameters.Add("@age", SqlDbType.Int).Value = age;
                cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = dob;
                cmd.Parameters.Add("@email", SqlDbType.NVarChar, 150).Value = txtEmail.Text.Trim();
                cmd.Parameters.Add("@password", SqlDbType.NVarChar, 100).Value = txtPass.Text;
                cmd.Parameters.Add("@contact", SqlDbType.NVarChar, 30).Value = contact;
                cmd.Parameters.Add("@address", SqlDbType.NVarChar, 300).Value = txtAddress.Text.Trim();
                cmd.Parameters.Add("@state", SqlDbType.NVarChar, 100).Value = ddlState.SelectedValue;
                cmd.Parameters.Add("@pincode", SqlDbType.Int).Value = pinCode;
                cmd.Parameters.Add("@hobbies", SqlDbType.NVarChar, 300).Value = hobby;
                cmd.Parameters.Add("@photo", SqlDbType.NVarChar, 300).Value = imgPath;
                cmd.ExecuteNonQuery();
            }

            display();
            lbl_status.ForeColor = System.Drawing.Color.Green;
            lbl_status.Text = "Record inserted";
            ClearForm();
        }

        private void ClearForm()
        {
            txtFname.Text = string.Empty;
            txtLname.Text = string.Empty;
            txtAge.Text = string.Empty;
            txtDob.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtCpass.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtPin.Text = string.Empty;
            ddlCode.SelectedIndex = 0;
            ddlState.SelectedIndex = 0;

            foreach (ListItem item in chk_hobby.Items)
            {
                item.Selected = false;
            }

            rbMale.Checked = false;
            rbFemale.Checked = false;
        }
        public void display()
        {
            string query = "select * from P4";
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
            txtFname.Text = GridView1.SelectedRow.Cells[5].Text;
            txtLname.Text = GridView1.SelectedRow.Cells[6].Text;
            string gender = GridView1.SelectedRow.Cells[7].Text;
            if (gender == "Female")
            {
                rbFemale.Checked = true;
            }
            else
            {
                rbMale.Checked = true;
            }
            txtAge.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
            DateTime dob = Convert.ToDateTime(GridView1.SelectedRow.Cells[9].Text);
            txtDob.Text = dob.ToString("yyyy-MM-dd");
            txtEmail.Text = GridView1.SelectedRow.Cells[10].Text;
            txtPass.Attributes.Add("value", GridView1.SelectedRow.Cells[11].Text);
            txtCpass.Attributes.Add("value", GridView1.SelectedRow.Cells[11].Text);
            string contact = GridView1.SelectedRow.Cells[12].Text;
            char[] mo_no = contact.ToCharArray();
            for (int i = 3; i < mo_no.Length; i++)
            {
                txtPhone.Text += mo_no[i];
            }
            txtAddress.Text = GridView1.SelectedRow.Cells[13].Text;
            ddlState.SelectedValue = GridView1.SelectedRow.Cells[14].Text;
            string[] hobby = GridView1.SelectedRow.Cells[16].Text.Split(',');
            foreach (ListItem item in chk_hobby.Items)
            {
                if (hobby.Contains(item.Text))
                {
                    item.Selected = true;
                }
            }
            txtPin.Text = GridView1.SelectedRow.Cells[15].Text.ToString();
            display();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string query = "delete from P4 where id = '" + id + "'";
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
            TextBox txtFname = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
            TextBox txtLname = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
            TextBox txtGender = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0];
            TextBox txtAge = (TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0];
            TextBox txtDOB = (TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0];
            TextBox txtEmail = (TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0];
            TextBox txtPassword = (TextBox)GridView1.Rows[e.RowIndex].Cells[11].Controls[0];
            TextBox txtContact = (TextBox)GridView1.Rows[e.RowIndex].Cells[12].Controls[0];
            TextBox txtAdd = (TextBox)GridView1.Rows[e.RowIndex].Cells[13].Controls[0];
            TextBox txtState = (TextBox)GridView1.Rows[e.RowIndex].Cells[14].Controls[0];
            TextBox txtPin = (TextBox)GridView1.Rows[e.RowIndex].Cells[15].Controls[0];
            TextBox txtHobby = (TextBox)GridView1.Rows[e.RowIndex].Cells[16].Controls[0];
            TextBox txtPhoto = (TextBox)GridView1.Rows[e.RowIndex].Cells[17].Controls[0];
            string query = "update P4 set fname = '" + txtFname.Text + "',lname = '" + txtLname.Text + "',gender = '" + txtGender.Text + "',age = '" + txtAge.Text + "',date = '" + txtDOB.Text + "',email = '" + txtEmail.Text + "',password = '" + txtPassword.Text + "',contact = '" + txtContact.Text + "',address = '" + txtAdd.Text + "',state = '" + txtState.Text + "',pincode = '" + txtPin.Text + "',hobbies = '" + txtHobby.Text + "',photo = '" + txtPhoto.Text + "' where id = '" + id + "'";
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