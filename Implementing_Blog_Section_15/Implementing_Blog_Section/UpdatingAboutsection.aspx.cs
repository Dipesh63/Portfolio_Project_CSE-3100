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
    public partial class UpdatingAboutsection : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_click(object sender, EventArgs e)
        {
            // Create a SqlConnection using the connection string
            using (SqlConnection conn = new SqlConnection(cs))
            {
                // Define the SQL query to update the Details column in the AboutInfo table
                string query = "UPDATE AboutInfo SET Details = @data WHERE id=1";

                // Create a SqlCommand with the query and connection
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Set the parameter for the updated data
                    cmd.Parameters.AddWithValue("@data", textarea1.Value);

                    // Open the connection
                    conn.Open();

                    // Execute the update query and get the number of rows affected
                    int rowsAffected = cmd.ExecuteNonQuery();

                    // Check if the update was successful
                    if (rowsAffected > 0)
                    {
                        // The update was successful
                        // You can add any further action here, such as displaying a success message
                    }
                    else
                    {
                        // The update was not successful
                        // You can add any further action here, such as displaying an error message
                    }
                }
            }
            Response.Redirect("index.aspx");
        }

    }
}