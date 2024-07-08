using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementing_Blog_Section
{
    public partial class SelectingUpdateDeleteSectionForPhotoGraph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Loop through the CheckBoxList to find the selected item(s)
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    // Navigate to a different page based on the selected item
                    switch (item.Value)
                    {
                        case "Update":
                            Response.Redirect("UpdatePhotogarph.aspx");
                            break;
                        case "Add":
                            Response.Redirect("AddPhotograph.aspx");
                            break;
                        default:
                            // Handle the case when no item is selected or an invalid item is selected
                            break;
                    }
                }
            }
        }
    }
}