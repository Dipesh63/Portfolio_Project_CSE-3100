<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectingPage.aspx.cs" Inherits="Implementing_Blog_Section.SelectingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="Blog Section" Value="BlogSection"></asp:ListItem>
                <asp:ListItem Text="Project Section" Value="ProjectSection"></asp:ListItem>
                <asp:ListItem Text="Contact Section" Value="ContactSection"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
