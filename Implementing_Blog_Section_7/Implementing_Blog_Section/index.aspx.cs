using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Implementing_Blog_Section
{
    public partial class index : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            generating_blogList();
            BindRandomImage();
            loadAboutSection();



        }

        private void loadAboutSection()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
            string query = "SELECT Details FROM AboutInfo WHERE id = 1";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    // Retrieve the details from the database
                    string details = reader["Details"].ToString();

                    // Call the JavaScript function to update the <p> tag
                    ClientScript.RegisterStartupScript(this.GetType(), "UpdateInnerText", $"updateInnerText('{details}');", true);
                }
            }

        }

        private void generating_blogList()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from CardD ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();

        }


        protected void Timer1_Tick(object sender, EventArgs e)
        {
            BindRandomImage(); // Bind a random image on each timer tick
        }

        private void BindRandomImage()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT TOP 1 Sliderimage FROM SliderImage ORDER BY NEWID()", con);
                con.Open();
                string imageUrl = (string)cmd.ExecuteScalar();

                if (!string.IsNullOrEmpty(imageUrl))
                {
                    Image1.ImageUrl = "~/images/" + imageUrl; // Assuming images are stored in the "images" folder
                }
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
        string username = TextBox1.Text; // Corrected TextBox ID
        string password = TextBox2.Text; // Corrected TextBox ID

        // You should always use parameterized queries to prevent SQL injection
        string query = "SELECT COUNT(*) FROM LogIn WHERE UserName = @user AND Password = @pass";

        using (SqlConnection conn = new SqlConnection(cs))
        {
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@user", username);
                cmd.Parameters.AddWithValue("@pass", password);
                conn.Open();
                int count = (int)cmd.ExecuteScalar(); // ExecuteScalar returns the first column of the first row
                conn.Close();

                if (count > 0)
                {
                    // Authentication successful, redirect the user to another page
                    Response.Redirect("Selectingpage.aspx"); // Replace WelcomePage.aspx with the desired page
                }
                else
                {
                    // Authentication failed, show error message to the user

                }
            }
        }

        }
    }
}