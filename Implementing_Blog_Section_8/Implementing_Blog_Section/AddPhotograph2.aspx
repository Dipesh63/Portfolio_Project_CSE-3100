<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPhotograph2.aspx.cs" Inherits="Implementing_Blog_Section.AddPhotograph2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Emter the Photo:</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Label ID="Label2" runat="server" Text="Label">Enter the deatils:</asp:Label>
            <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox><br />



            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
