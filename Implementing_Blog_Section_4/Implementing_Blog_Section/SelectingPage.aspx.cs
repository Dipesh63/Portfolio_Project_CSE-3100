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
                    Response.Redirect("selectingupdatedeletesectionforphotograph.aspx");
                    break;
                case "contactsection":
                    Response.Redirect("contact.aspx");
                    break;
                default:
                    // Handle the case when no item is selected or an invalid item is selected
                    break;
            }
        }

    }
}