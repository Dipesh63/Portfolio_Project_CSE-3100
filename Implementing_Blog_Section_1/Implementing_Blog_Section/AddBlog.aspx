<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBlog.aspx.cs" Inherits="Implementing_Blog_Section.AddBlog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Enter the Blog Description:</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Label">Enter the Date:</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Label">Enter The Content:</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Label">Enter the image:</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
