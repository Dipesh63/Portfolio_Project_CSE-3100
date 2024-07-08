using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Implementing_Blog_Section
{
    public partial class index : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        private List<int> imageIds = new List<int>();
        private int currentImageIndex = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                LoadAboutSection();
                LoadBlogList();
            }
        }


        private void LoadAboutSection()
        {
            string query = "SELECT Details FROM AboutInfo WHERE id = 1";

            try
            {
                using (SqlConnection connection = new SqlConnection(cs))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        string details = reader["Details"].ToString();
                        ClientScript.RegisterStartupScript(this.GetType(), "UpdateInnerText", $"updateInnerText('{details}');", true);
                    }

                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                // Handle the error (e.g., log it, display a message)
                Console.WriteLine("Error loading About section: " + ex.Message);
            }
        }

        private void LoadBlogList()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "SELECT * FROM CardD";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();

                    adapter.Fill(ds);
                    ListView1.DataSource = ds;
                    ListView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Handle the error (e.g., log it, display a message)
                Console.WriteLine("Error loading Blog list: " + ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = TextBox1.Text;
                string password = TextBox2.Text;
                //string query = "SELECT COUNT(*) FROM LogIn WHERE UserName = @user AND Password = @pass";
                string query = "SELECT COUNT(*) FROM SignUp WHERE Name = @user AND Password = @pass";

                using (SqlConnection conn = new SqlConnection(cs))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@user", username);
                        cmd.Parameters.AddWithValue("@pass", password);
                        conn.Open();
                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            Response.Redirect("Selectingpage.aspx");
                        }
                        else
                        {
                            // Login failed, show alert
                            string script = "alert('Login failed. Please check your username and password.');";
                            ClientScript.RegisterStartupScript(this.GetType(), "LoginFailed", script, true);
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                // Handle the error (e.g., log it, display a message)
                Console.WriteLine("Error during login: " + ex.Message);
            }
        }

       
    }
}
