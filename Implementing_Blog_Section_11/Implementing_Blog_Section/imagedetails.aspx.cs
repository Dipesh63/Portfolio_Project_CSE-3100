using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Implementing_Blog_Section
{
    public partial class imagedetails : System.Web.UI.Page
    {
        // Connection string
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the ImageId query string parameter is present
                if (Request.QueryString["ImageId"] != null)
                {
                    // Retrieve the image ID from the query string
                    int imageId = Convert.ToInt32(Request.QueryString["ImageId"]);

                    // Fetch image and details from the database based on the ID
                    FetchImageDetails(imageId);
                }
            }
        }

        // Method to fetch image and details from the database
        private void FetchImageDetails(int imageId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    // SQL query to select image URL and details based on the ID
                    SqlCommand cmd = new SqlCommand("SELECT Sliderimage, ImageDetails FROM SliderImage2 WHERE Id = @ImageId", con);
                    cmd.Parameters.AddWithValue("@ImageId", imageId);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        // Get image URL and details from the database
                        string imageUrl = reader["Sliderimage"].ToString();
                        string imageDetails = reader["ImageDetails"].ToString();

                        // Set image URL and details on the page
                        Image1.ImageUrl = "~/images/" + imageUrl;
                        Label1.Text = imageDetails;
                    }
                    else
                    {
                        // Handle case where no image is found with the given ID
                        // For example, you can display an error message
                        Label1.Text = "Image not found.";
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                // You can log the error or display an error message to the user
                // For simplicity, let's just write the error to the console
                Console.WriteLine("Error: " + ex.Message);
            }
        }
    }
}
