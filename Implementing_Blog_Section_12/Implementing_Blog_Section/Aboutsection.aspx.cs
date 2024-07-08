using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Implementing_Blog_Section
{
    public partial class Aboutsection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch data from the database
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
        }


    }
}