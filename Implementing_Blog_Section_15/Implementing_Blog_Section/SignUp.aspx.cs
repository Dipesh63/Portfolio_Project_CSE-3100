using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementing_Blog_Section
{
    public partial class SignUp : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve the values entered in the form
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string password = TextBox3.Text;

            // Define your SQL query to insert data into the database
            string query = "INSERT INTO SignUp (Name, Email, Password) VALUES (@Name, @Email, @Password)";

            try
            {
                // Create a connection to the database
                using (SqlConnection connection = new SqlConnection(cs))
                {
                    // Create a command to execute the SQL query
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the command to prevent SQL injection
                        command.Parameters.AddWithValue("@Name", name);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Password", password);

                        // Open the database connection
                        connection.Open();

                        // Execute the SQL query to insert data
                        command.ExecuteNonQuery();

                        // Close the database connection
                        connection.Close();

                        // Optionally, you can redirect the user to another page after successful insertion
                        Response.Redirect("index.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions (e.g., display an error message)
                Response.Write("An error occurred: " + ex.Message);
            }
        }

    
    }
}