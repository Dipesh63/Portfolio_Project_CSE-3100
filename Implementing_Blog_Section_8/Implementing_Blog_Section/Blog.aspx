<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Implementing_Blog_Section.Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Text="Update Blog Section" Value="Update"></asp:ListItem>
                <asp:ListItem Text="Add a New Blog Section" Value="Add"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
