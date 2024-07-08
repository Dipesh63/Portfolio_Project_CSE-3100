using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Implementing_Blog_Section
{
    public partial class AddBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve values from the form controls
            string description = TextBox1.Text;
            string date = TextBox2.Text;
            string content = Textarea1.Value;

            string path;

            // Check if a file is uploaded
            if (FileUpload1.HasFile)
            {
                // Save the file to the server
              
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath+ "images/" + FileUpload1.FileName);

                // Concatenate the server root path with the filename
                path = FileUpload1.FileName;

                // Insert blog details into the database
                string connectionString = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO CardD (CardImage, CardContent, CardDate, CardDetails) VALUES (@ImagePath, @Description, @Date, @Content)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ImagePath", path);
                        command.Parameters.AddWithValue("@Description", description);
                        command.Parameters.AddWithValue("@Date", date);
                        command.Parameters.AddWithValue("@Content", content);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                // Redirect to a success page or do any other necessary action
                Response.Redirect("index.aspx");
            }
            else
            {
                // Handle case where no file is uploaded
                // You may display an error message or take other action as needed
            }
        }



    }
}