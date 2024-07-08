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


        //protected void Timer1_Tick(object sender, EventArgs e)
        //{
        //    BindRandomImage(); // Bind a random image on each timer tick
        //}

        //private void BindRandomImage()
        //{
        //    using (SqlConnection con = new SqlConnection(cs))
        //    {
        //        SqlCommand cmd = new SqlCommand("SELECT TOP 1 Sliderimage FROM SliderImage ORDER BY NEWID()", con);
        //        con.Open();
        //        string imageUrl = (string)cmd.ExecuteScalar();

        //        if (!string.IsNullOrEmpty(imageUrl))
        //        {
        //            Image1.ImageUrl = "~/images/" + imageUrl; // Assuming images are stored in the "images" folder
        //        }
        //    }
        //}



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


                        UpdatePanel1.Update(); // Update the UpdatePanel to refresh the content
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