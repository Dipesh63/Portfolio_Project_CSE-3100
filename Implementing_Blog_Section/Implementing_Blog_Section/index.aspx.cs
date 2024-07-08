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

namespace Implementing_Blog_Section
{
    public partial class index : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

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