<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotographSection.aspx.cs" Inherits="Implementing_Blog_Section.PhotographSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Photography Section</title>
    <style>
        .photography {
            background-color: #e6e7e8;
            padding: 20px;
        }
        .text-content {
            text-align: center;
            margin-bottom: 20px;
        }
        .slider {
            text-align: center;
            margin-top: 20px;
        }
        .image-container {
            display: inline-block;
            margin: 0 auto;
        }
        .navigation-buttons {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="photography">
            <div class="text-content">
                <h2>Welcome to My Photography</h2>
                <p>“Taking pictures is savoring life intensely, every hundredth of a second.” - Marc Riboud</p>
            </div>
            <div class="slider">
                <div class="image-container">
                    <asp:Image ID="Image1" runat="server" Width="400px" Height="300px" />
                </div>
                <div class="navigation-buttons">
                    <asp:Button ID="btnPrevious" runat="server" Text="Previous" OnClick="btnPrevious_Click"   style="width:6.6rem; height:40px;background:#04AA6D;"  />
                    <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click"  style="width:6.6rem; height:40px;background:#008CBA;"  />
                    <asp:Button ID="Button1" runat="server" Text="Details" OnClick="Button1_Click"  style="width:6.6rem; height:40px;background:#f44336;"  />
                </div>
            </div>
        </section>
    </form>
</body>
</html>
