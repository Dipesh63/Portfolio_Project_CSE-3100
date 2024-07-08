<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectingUpdateDeleteSectionForPhotoGraph.aspx.cs" Inherits="Implementing_Blog_Section.SelectingUpdateDeleteSectionForPhotoGraph" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem Text="Update Photograph Section" Value="Update"></asp:ListItem>
                <asp:ListItem Text="Add a New Photograph Section" Value="Add"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
