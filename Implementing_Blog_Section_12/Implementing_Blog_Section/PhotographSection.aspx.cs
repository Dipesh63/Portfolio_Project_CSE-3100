using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Implementing_Blog_Section
{
    public partial class PhotographSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadImage();
            }
        }

        private void LoadImage()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT TOP 1 Id, Sliderimage FROM SliderImage2 ORDER BY Id DESC";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        int imageId = Convert.ToInt32(reader["Id"]);
                        string imageUrl = "images/" + reader["Sliderimage"].ToString();
                        Image1.ImageUrl = imageUrl;

                        ViewState["CurrentImageId"] = imageId;
                    }
                    reader.Close();
                }
            }
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            int currentImageId = Convert.ToInt32(ViewState["CurrentImageId"]);
            int previousImageId = currentImageId - 1;
            if (previousImageId > 0)
            {
                DisplayImageById(previousImageId);
            }
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int currentImageId = Convert.ToInt32(ViewState["CurrentImageId"]);
            int nextImageId = currentImageId + 1;
            DisplayImageById(nextImageId);
        }

        private void DisplayImageById(int imageId)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("SELECT Sliderimage FROM SliderImage2 WHERE Id = @ImageId", con);
                    cmd.Parameters.AddWithValue("@ImageId", imageId);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        string imageUrl = "images/" + reader["Sliderimage"].ToString();
                        Image1.ImageUrl = imageUrl;

                        ViewState["CurrentImageId"] = imageId;
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }
    }
}
