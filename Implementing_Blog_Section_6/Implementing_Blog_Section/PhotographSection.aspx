﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotographSection.aspx.cs" Inherits="Implementing_Blog_Section.PhotographSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .photography{
            background-color:antiquewhite;
        }
        .TextContent{
            text-align:center;
            margin-top:35px;
        }
       .slider {
            text-align: center; /* Center align the content */
            margin-top:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="photography">
            <div class="TextContent">
                <h2>Welcome to My Photography</h2>
                <p>
                    “Taking pictures is savoring life intensely, every hundredth of a second.”
– Marc Riboud
                </p>
            </div>


            <div class="slider">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                        <asp:Image ID="Image1" runat="server" Width="260px" Height="180px" />

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </section>
    </form>
</body>
</html>
