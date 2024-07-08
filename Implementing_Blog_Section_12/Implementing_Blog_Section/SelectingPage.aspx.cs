using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementing_Blog_Section
{
    public partial class SelectingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get the selected item from the DropDownList
            string selectedItem = dropdownlist1.SelectedValue;

            // Navigate to a different page based on the selected item
            switch (selectedItem)
            {
                case "blogsection":
                    Response.Redirect("AddBlog.aspx");
                    break;
                case "photographsection":
                    Response.Redirect("AddPhotograph2.aspx");
                    break;
                case "Aboutsection":
                    Response.Redirect("UpdatingAboutsection.aspx");
                    break;
                case "Contactsection":
                    Response.Redirect("UpdatingContactsection.aspx");
                    break;
                default:
                    // Handle the case when no item is selected or an invalid item is selected
                    break;
            }
        }

    }
}