using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace _230801347.Extra
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            _230801347.Extra.DatabaseInitializer.EnsureFreshDatabase();
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=ch4;Integrated Security=True");

            string query = "select * from P5";
            //disconnected
            SqlDataAdapter dapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            if (!IsPostBack)
            {
                int searchID = Convert.ToInt32(Session["id"]); // ID you want to highlight

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    if (Convert.ToInt32(GridView1.DataKeys[i].Value) == searchID)
                    {
                        GridView1.SelectedIndex = i;
                        break;
                    }
                }
            }
        }
    }
}