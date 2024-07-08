<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectingPage.aspx.cs" Inherits="Implementing_Blog_Section.SelectingPage" %>

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

        /* Responsive styles */
        @media screen and (max-width: 768px) {
            .selectionpage {
                width:100%;
                margin-left: 20px;
                margin-right: 20px;
            }
        }

        @media screen and (max-width: 480px) {
            .selectionpage {
                width: 100%;
            }


            #Label1 {
                font-size: 22px;
            }

            #dropdownlist1 {
                font-size: 18px;
            }

            #Button1 {
                width: 120px;
                height: 36px;
                font-size: 14px;
            }
        }
       
        

    </style>
</head>
<body>
    <form id="form1" runat="server">
       <%-- <section class="selection">
            <div>
                <asp:Label ID="Label2"  runat="server" Text="Label" >WelCome to Slection page !!!</asp:Label><br />
                <asp:Label ID="Label1" runat="server" Text="Label">Select the section:</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Blog Section" Value="BlogSection"></asp:ListItem>
                    <asp:ListItem Text="Photograph Section" Value="PhotographSection"></asp:ListItem>
                    <asp:ListItem Text="Contact Section" Value="ContactSection"></asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

            </div>
        </section>--%>


       <section class="selectionpage" style=" border: 2px solid black; margin-left: 320px; margin-right: 320px;">
    <div class="Content">
        <h2 style="font-family: sans-serif; text-align:center; font-size:36px;">Welcome To <span style="color: #3DCFD3;">Selection Page</span></h2>
         <!-- Add line break here -->
        <asp:Label ID="Label1" runat="server" Text="Label" style="margin-top: 14px; font-size: 28px; width: 300px; height: 40px; text-align:left;  margin-left:36px;">Select the Section:</asp:Label>
        



        
        <asp:dropdownlist id="dropdownlist1" runat="server" style="font-size:20px;margin-left:3.8rem;">
            <asp:listitem text="blog section" value="blogsection"></asp:listitem>
            <asp:listitem text="photograph section" value="photographsection"></asp:listitem>
            <asp:listitem text="About section" value="Aboutsection"></asp:listitem>
            <asp:listitem text="Contact section" value="Contactsection"></asp:listitem>
        </asp:dropdownlist>
        <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

         
       
    </div>
</section>

       
    </form>
</body>
</html>
