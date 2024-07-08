<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessPage.aspx.cs" Inherits="Implementing_Blog_Section.SuccessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Optional CSS for card styling */
        .card {
            margin-bottom: 42px;
            margin-left:70px;
            margin-right:70px;
            border: 3px solid #ccc;
            box-shadow:  0 4px 8px rgba(97, 183, 216, 0.1); /* Add box shadow */
        }
        .card img {
            width: 200px; /* Fixed width for the image */
            height: 280px; /* Fixed height for the image */
        }
        .card-content {
            padding: 10px;
            color: #333; /* Text color for card content */
        }
        /* Background color for odd rows */
       .odd-row {
            background-color:#e4dbdb;
        }
        /* Background color for even rows */
        .even-row {
            background-color: #e6e6e6;
        }
    </style>
 
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <table style="width: 100%;">
                            <tr class='<%# Container.DisplayIndex % 2 == 0 ? "even-row" : "odd-row" %>'>
                                <!-- First item template -->
                                <td style="width: 15%; vertical-align: top;">
                                    <img src='<%# ResolveUrl("~/images/") + Eval("CardImage") %>' />
                                </td>

                                <!-- Second item template -->
                                <td style="width: 85%; vertical-align: top;">
                                    <div class="card-content">
                                        <h2 style="margin-top: 0;"><%# Eval("CardContent") %></h2>
                                        <p><%# Eval("CardDate") %></p>
                                        <p><%# Eval("CardDetails") %></p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>







