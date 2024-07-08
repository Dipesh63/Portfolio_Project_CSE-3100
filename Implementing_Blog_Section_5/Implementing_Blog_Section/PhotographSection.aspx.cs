//using System;
//using System.Web.UI.WebControls;
//using System.Configuration;
//using System.Data.SqlClient;
//using System.Data;
//using System.IO;

//namespace Implementing_Blog_Section
//{
//    public partial class PhotographSection : System.Web.UI.Page
//    {
//        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }



//        protected void Timer1_Tick(object sender, EventArgs e)
//        {
//           Random ran= new Random();
//            int i=ran.Next(1,4);
//            Image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";

//        }


//    }
//}









using System;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Implementing_Blog_Section
{
    public partial class PhotographSection : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRandomImage(); // Initially bind a random image
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            BindRandomImage(); // Bind a random image on each timer tick
        }

        private void BindRandomImage()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT TOP 1 Sliderimage FROM SliderImage ORDER BY NEWID()", con);
                con.Open();
                string imageUrl = (string)cmd.ExecuteScalar();

                if (!string.IsNullOrEmpty(imageUrl))
                {
                    Image1.ImageUrl = "~/images/" + imageUrl; // Assuming images are stored in the "images" folder
                }
            }
        }
    }
}

