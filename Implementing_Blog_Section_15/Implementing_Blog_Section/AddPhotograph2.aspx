<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPhotograph2.aspx.cs" Inherits="Implementing_Blog_Section.AddPhotograph2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <section class="selectionpage" style="border: 2px solid black; margin-left: 320px; margin-right: 320px;">
            <div class="content">
                <h2 style="font-family: sans-serif; text-align: center; font-size: 36px;">Thank You <span style="color: #3DCFD3;">for selection the Photograph Section</span></h2>
                <asp:Label ID="Label3" runat="server" Text="Label" Style="color: #e74d06; margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align: left; margin-left: 36px;">Select the photograph:</asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" Style="margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align: left; margin-left: 36px;" /><br />

                <asp:Label ID="Label4" runat="server" Text="Label" Style="color: #e74d06; margin-top: 0.5rem; font-size: 28px; width: 300px; height: 40px; text-align: left; margin-left: 36px;">Enter the Photo Decription:</asp:Label>
                <textarea id="Textarea1" runat="server" style="margin-top: 1.5rem; font-size: 20px; width: 300px; height: 100px; text-align: left; margin-left: 36px;"></textarea><br />


                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Style="cursor: pointer; margin-top: 2.2rem; font-size: 16px; width: 140px; height: 40px; background-color: #e74d06; color: black; transition: color 0.3s; margin-left: auto; margin-right: auto; display: block; margin-bottom: 1.2rem;" />

            </div>
        </section>




        <%--<div>
            <asp:Label ID="Label1" runat="server" Text="Label">Emter the Photo:</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Label ID="Label2" runat="server" Text="Label">Enter the deatils:</asp:Label>
            <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox><br />--%>



          
        
    </form>
</body>
</html>
