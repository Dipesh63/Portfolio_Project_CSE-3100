<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imagedetails.aspx.cs" Inherits="Implementing_Blog_Section.imagedetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        /* Center the section horizontally and vertically */
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Style for the section */
        section {
            border: 2px solid black;
            width: 50%; /* Adjust the width as desired */
            height: 60%; /* Adjust the height as desired */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        /* Style for the image */
        #Image1 {
            width: 100%; /* Make the image take the full width of its container */
            height: auto; /* Let the height adjust proportionally */
            max-height: 80%; /* Limit the maximum height relative to the section */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <asp:Image ID="Image1" runat="server" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </section>
    </form>
</body>
</html>--%>

















<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imagedetails.aspx.cs" Inherits="Implementing_Blog_Section.imagedetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        /* Center the section horizontally */
        

        /* Style for the section */
        section {
            /*position: fixed;*/ /* Fix the section at the top of the screen */
            margin:0 auto;
            border: 2px ridge #c7c9c8;
            width: 50%; /* Adjust the width as desired */
            height: 60%; /* Adjust the height as desired */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        /* Style for the image */
        #Image1 {
            width: 100%; /* Make the image take the full width of its container */
            height: 480px; /* Let the height adjust proportionally */
            max-height: 80%; /* Limit the maximum height relative to the section */
        } 
        #Label1{
            font-size:28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <asp:Image ID="Image1" runat="server" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </section>
    </form>
</body>
</html>

