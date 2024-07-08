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
    public partial class AddPhotograph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path;

            // Check if a file is uploaded
            if (FileUpload1.HasFile)
            {
                // Save the file to the server

                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "images/" + FileUpload1.FileName);

                // Concatenate the server root path with the filename
                path = FileUpload1.FileName;
                // Insert blog details into the database
                string connectionString = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO SliderImage (Sliderimage) VALUES (@ImagePath)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ImagePath", path);
                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                // Redirect to a success page or do any other necessary action
                Response.Redirect("PhotographSection.aspx");
            }
            else
            {
                // Handle case where no file is uploaded
                // You may display an error message or take other action as needed
            }
        }






















    }
}