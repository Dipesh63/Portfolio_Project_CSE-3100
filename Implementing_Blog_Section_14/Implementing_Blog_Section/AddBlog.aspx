<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBlog.aspx.cs" Inherits="Implementing_Blog_Section.AddBlog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
       <section class="selectionpage" style=" border: 2px solid black; margin-left: 320px; margin-right: 320px;">
        <div class="content">
             <h2 style="font-family: sans-serif; text-align:center; font-size:36px;">Thank You <span style="color: #3DCFD3;">for selection the Blog Section</span></h2>
            <asp:Label ID="Label1" runat="server" Text="Label"  style=" color: #e74d06;    margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;">Enter the Blog Description:</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"   style="margin-top: 14px; font-size: 20px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"   ></asp:TextBox><br />


            <asp:Label ID="Label2" runat="server" Text="Label" style="  color: #e74d06;  margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;">Enter the Date:</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"   style="margin-top: 14px; font-size: 20px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"   ></asp:TextBox><br />



            <asp:Label ID="Label3" runat="server" Text="Label"    style="  color: #e74d06;  margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;" >Enter The Content:</asp:Label>
           <%-- <asp:TextBox ID="TextBox3" runat="server"   style="margin-top: 14px; font-size: 20px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"  ></asp:TextBox><br />--%>
            <textarea ID="Textarea1" runat="server" style="margin-top: 14px; font-size: 20px; width: 300px; height: 100px; text-align:left;  margin-left:36px;"></textarea><br />


            <asp:Label ID="Label4" runat="server" Text="Label"    style="  color: #e74d06;   margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"  >Enter the image:</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server"   style="margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"   /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"    style="cursor: pointer; margin-top:2.2rem;font-size: 16px;width: 140px; height: 40px; background-color: #e74d06;color:black;transition: color 0.3s;  margin-left: auto; margin-right: auto; display: block; margin-bottom:1.2rem; " />
        </div>
           </section>
    </form>
</body>
</html>




































