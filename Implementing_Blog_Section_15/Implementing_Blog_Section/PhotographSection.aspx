<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotographSection.aspx.cs" Inherits="Implementing_Blog_Section.PhotographSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Photography Section</title>
    <style>
        .image-container {
            overflow-x: auto;
            white-space: nowrap;
        }
        .image-item {
            display: inline-block;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2  style="text-align:center;display:block;" >My Photography</h2>
        <div class="image-container">
            <asp:ListView ID="ListViewImages" runat="server">
                <ItemTemplate>
                    <div class="image-item">
                        <asp:Image ID="ImageThumbnail" runat="server" ImageUrl='<%# Eval("ImageUrl") %>'   style="width:420px;height:320px;" />
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
