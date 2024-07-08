using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Implementing_Blog_Section
{
    public partial class PhotographSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadImages();
            }
        }

        private void LoadImages()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
            string query = "SELECT Id, Sliderimage FROM SliderImage2 ORDER BY Id DESC";

            List<object> images = new List<object>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        images.Add(new { ImageUrl = "images/" + reader["Sliderimage"].ToString() });
                    }
                    reader.Close();
                }
            }

            ListViewImages.DataSource = images;
            ListViewImages.DataBind();
        }
    }
}
