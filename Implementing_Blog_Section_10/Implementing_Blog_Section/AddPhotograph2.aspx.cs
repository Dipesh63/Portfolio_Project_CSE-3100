using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementing_Blog_Section
{
    public partial class AddPhotograph2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Check if a file is uploaded
            if (FileUpload1.HasFile)
            {
                // Save the file to the server
                string fileName = Path.GetFileName(FileUpload1.FileName);
                string filePath = "~/images/" + fileName;
                FileUpload1.SaveAs(Server.MapPath(filePath));

                // Get image details
                string imageDetails = Textarea1.Value; // Assuming you have a TextBox named TextBoxImageDetails to capture image details

                // Insert image details into the database
                string connectionString = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO SliderImage2 (Sliderimage, ImageDetails) VALUES (@ImagePath, @ImageDetails)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ImagePath", fileName); // Save only the file name
                        command.Parameters.AddWithValue("@ImageDetails", imageDetails); // Save image details
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