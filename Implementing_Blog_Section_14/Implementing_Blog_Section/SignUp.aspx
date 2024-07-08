<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Implementing_Blog_Section.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section   style=" border: 2px solid black; margin-left: 160px; margin-right: 160px;" >
            <div>
                <h2 style="font-family: sans-serif; text-align:center; font-size:36px;" >Welcome To SignUp Page</h2>
                <asp:Label ID="Label1" runat="server" Text="Label"      style=" color: #e74d06;    margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"   >Enter Your Name:</asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 14px; font-size: 20px; width: 300px; height: 40px; text-align:left;  margin-left:2.6rem;"  ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter The Username" ControlToValidate="TextBox1" ForeColor="#FF5050"></asp:RequiredFieldValidator><br />



                <asp:Label ID="Label2" runat="server" Text="Label"     style="  color: #e74d06;  margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"    >Enter Your Email:</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"   style="margin-top: 14px; font-size: 20px; width: 300px; height: 40px; text-align:left;  margin-left:96px;"   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter a Email" ControlToValidate="TextBox2"    ></asp:RequiredFieldValidator><br />
               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2" ValidationExpression="internet email" ForeColor="#FF5050"></asp:RegularExpressionValidator><br />--%>



                  
            <asp:Label ID="Label3" runat="server" Text="Label"    style="  color: #e74d06;  margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"   >Enter Your Password:</asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"  style="margin-top: 14px; font-size: 20px; width: 300px; height: 40px; text-align:left;  margin-left:62px;"  ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter The Password" ControlToValidate="TextBox3" ForeColor="#FF5050"></asp:RequiredFieldValidator><br />




                <asp:Label ID="Label4" runat="server" Text="Label"    style="  color: #e74d06;  margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"   >ReEnter Your Password:</asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"  style="margin-top: 14px; font-size: 20px; width: 300px; height: 40px; text-align:left;  margin-left:36px;"  ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter The Password" ControlToValidate="TextBox3" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please,Enter The same Password" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ForeColor="#FF5050"></asp:CompareValidator><br />



                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"   style="cursor: pointer; margin-top:2.2rem;font-size: 16px;width: 140px; height: 40px; background-color: #e74d06;color:black;transition: color 0.3s;  margin-left: auto; margin-right: auto; display: block; margin-bottom:1.2rem; "   />
            </div>
        </section>
       
    </form>
</body>
</html>
