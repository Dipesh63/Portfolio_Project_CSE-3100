<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPhotograph.aspx.cs" Inherits="Implementing_Blog_Section.AddPhotograph" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
  

   #Button1 {
        border-radius: 10px;
        background-color: #5adbb5;
        color: black;
        font-size: 16px;
        width: 140px;
        height: 40px;
        cursor: pointer;
        margin: 0 auto;
        display: block;
        transition: color 0.3s;
        margin-top:2.2rem;        }

    #Button1:hover {
        background-color: #4681f4;
    }
   
    

</style>


</head>
<body>
    <form id="form1" runat="server">
        <%--<div>
            <asp:Label ID="Label1" runat="server" Text="Label">Select a Photograph</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>--%>


  
       <section class="selectionpage" style=" border: 2px solid black; margin-left: 320px; margin-right: 320px;">
    <div class="Content">
        <h2 style="font-family: sans-serif; text-align:center; font-size:36px;">Thank You <span style="color: #3DCFD3;">for selecting the Photograph Section</span></h2>
         <!-- Add line break here -->
         <asp:Label ID="Label1" runat="server" Text="Label" style="margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;">Select A Photograph:</asp:Label>
        
         <asp:FileUpload ID="FileUpload1" runat="server"   style="font-size:20px;margin-left:3.8rem;"   /><br />
            <br />

         <asp:Label ID="Label2" runat="server" Text="Label" style="margin-top: 4rem; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;">Enter the Photograph Details:</asp:Label>
        
         <textarea ID="Textarea1" runat="server" style="margin-top: 8px; font-size: 20px; width: 300px; height: 100px; text-align:left;  margin-left:36px;"></textarea><br />





<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />


    </form>
</body>
</html>
