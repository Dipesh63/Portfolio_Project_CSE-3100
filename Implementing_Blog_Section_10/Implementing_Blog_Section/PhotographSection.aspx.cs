using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Implementing_Blog_Section
{
    public partial class PhotographSection : System.Web.UI.Page
    {
        // Connection string
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        // Page Load event handler
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind random image when the page is loaded for the first time
                BindRandomImage();
            }
        }

        // Method to bind a random image
        private void BindRandomImage()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    // SQL query to select a random image along with its ID
                    SqlCommand cmd = new SqlCommand("SELECT TOP 1 Id, Sliderimage FROM SliderImage2 ORDER BY NEWID()", con);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        // Get image ID and URL from the database
                        int imageId = Convert.ToInt32(reader["Id"]);
                        string imageUrl = reader["Sliderimage"].ToString();

                        // Set image URL and store image ID in the ImageUrl property
                        if (!string.IsNullOrEmpty(imageUrl))
                        {
                            Image1.ImageUrl = "~/images/" + imageUrl + "?ImageId=" + imageId.ToString();
                        }
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

        // Forward button click event handler
        protected void ForwardButton_Click(object sender, EventArgs e)
        {
            // Get the current image ID
            int currentImageId = GetCurrentImageId();

            // Get the next image ID
            int nextImageId = GetNextImageId(currentImageId);

            // Redirect to imagedetails.aspx with the next image ID in the query string
            Response.Redirect("imagedetails.aspx?ImageId=" + currentImageId);
        }

        // Backward button click event handler
        //protected void BackButton_Click(object sender, EventArgs e)
        //{
        //    // Get the current image ID
        //    int currentImageId = GetCurrentImageId();

        //    // Get the previous image ID
        //    int previousImageId = GetPreviousImageId(currentImageId);

        //    // Redirect to imagedetails.aspx with the previous image ID in the query string
        //    Response.Redirect("imagedetails.aspx?ImageId=" + previousImageId);
        //}













        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Get the current image ID
            int currentImageId = GetCurrentImageId();

            // Get the previous image ID
            int previousImageId = GetNextImageId(currentImageId);

            // Display the previous image directly on the page
            DisplayImageById(previousImageId);
        }








        protected void DisplayImageById(int imageId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("SELECT Sliderimage FROM SliderImage2 WHERE Id = @ImageId", con);
                    cmd.Parameters.AddWithValue("@ImageId", imageId);
                    con.Open();
                    string imageUrl = (string)cmd.ExecuteScalar();
                    if (!string.IsNullOrEmpty(imageUrl))
                    {
                        Image1.ImageUrl = "~/images/" + imageUrl + "?ImageId=" + imageId.ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }

















        // Method to get the current image ID
        private int GetCurrentImageId()
        {
            string imageUrl = Image1.ImageUrl;
            int startIndex = imageUrl.IndexOf("ImageId=") + "ImageId=".Length;
            int endIndex = imageUrl.IndexOf("&", startIndex);
            string imageId = endIndex == -1 ? imageUrl.Substring(startIndex) : imageUrl.Substring(startIndex, endIndex - startIndex);
            return Convert.ToInt32(imageId);
        }

        // Method to get the next image ID
        // Method to get the next image ID
        private int GetNextImageId(int currentId)
        {
            int nextId = -1;
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("SELECT TOP 1 Id FROM SliderImage2 WHERE Id > @CurrentId ORDER BY Id ASC", con);
                    cmd.Parameters.AddWithValue("@CurrentId", currentId);
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        nextId = Convert.ToInt32(result);
                    }
                    else
                    {
                        // If no next ID found, start from the beginning (ID = 0)
                        cmd.CommandText = "SELECT TOP 1 Id FROM SliderImage2 ORDER BY Id ASC";
                        cmd.Parameters.Clear();
                        result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            nextId = Convert.ToInt32(result);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
            return nextId;
        }

        // Method to get the previous image ID
        private int GetPreviousImageId(int currentId)
        {
            int previousId = -1;
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("SELECT TOP 1 Id FROM SliderImage2 WHERE Id < @CurrentId ORDER BY Id DESC", con);
                    cmd.Parameters.AddWithValue("@CurrentId", currentId);
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        previousId = Convert.ToInt32(result);
                    }
                    else
                    {
                        // If no previous ID found, go to the end (maximum ID)
                        cmd.CommandText = "SELECT TOP 1 Id FROM SliderImage2 ORDER BY Id DESC";
                        cmd.Parameters.Clear();
                        result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            previousId = Convert.ToInt32(result);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
            return previousId;
        }

    }
}
