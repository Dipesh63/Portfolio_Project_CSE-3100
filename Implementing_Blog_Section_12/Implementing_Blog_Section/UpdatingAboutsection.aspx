<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatingAboutsection.aspx.cs" Inherits="Implementing_Blog_Section.UpdatingAboutsection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <section class="selectionpage" style="border: 2px solid black; margin-left: 320px; margin-right: 320px;">
            <div class="Content">
                <h2 style="font-family: sans-serif; text-align: center; font-size: 36px;">Welcome To <span style="color: #3DCFD3;">About Page</span></h2>
                <!-- Add line break here -->
                <asp:Label ID="Label1" runat="server" Text="Label" Style="margin-top:2.4rem; font-size: 28px; width: 300px; height: 40px; text-align: left; margin-left: 36px;">Enter the Description of About me:</asp:Label>
              <textarea id="textarea1" runat="server" style=" font-size: 20px; width: 300px; height: 80px; text-align: left; margin-left: 36px;"></textarea><br />
              
                







                
                
               <asp:button id="button1" runat="server" text="submit" onclick="button1_click" style="cursor: pointer; margin-top: 2.2rem; 
font-size: 16px; width: 140px; height: 40px; background-color: #e74d06; color: black; 
transition: color 0.3s; margin-left: auto; margin-right: auto; display: block; margin-bottom: 1.2rem;" />


            </div>
        </section>
    </form>
</body>
</html>
