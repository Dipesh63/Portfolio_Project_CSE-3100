<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutsection.aspx.cs" Inherits="Implementing_Blog_Section.Aboutsection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        /* Style to remove border from TextBox */
        /*.styled-textbox {
            border: none;
            resize: none;*/ /* Disable resizing */
            /*background-color: transparent;*/ /* Make background transparent */
            /*font-family: inherit;*/ /* Inherit font family */
            /*font-size: inherit;*/ /* Inherit font size */
            /*width: 100%;*/ /* Full width */
            /*height: auto;*/ /* Auto height */
            /*padding: 0;*/ /* Remove padding */
            /*margin: 0;*/ /* Remove margin */
            /*outline: none;*/ /* Remove outline */
            /*overflow: hidden;*/ /* Hide overflow */
        /*}*/
    </style>


     <script>
        // JavaScript function to update the inner text of the <p> tag
        function updateInnerText(details) {
            document.getElementById('innertext').innerText = details;
        }
     </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="MyProfile flex items-center justify-between">
     <div class="Left">
         <img src="images/FirstPhoto.jpg" width="600px" height="450px">
     </div>
     <div class="Right">
         <h4>Dipesh Takukdar</h4>
         <h1>I am a <br><span>WebDeveloper, Student, AppDeveloper and SCOUT</span></h1>
         <p id="innertext">Embark on the journey of academic excellence, where challenges become stepping stones to success.
             With every lesson learned and every obstacle overcome, discover the boundless potential within.
             Let passion be your guide, determination your compass, and knowledge your greatest asset. In the
             realm of academia, each endeavor is a brushstroke on the canvas of your potential. Embrace the
             pursuit of knowledge, for it is the key that unlocks doors to endless possibilities. Your
             academic journey is not just a path; it's a testament to your resilience, intelligence, and
             limitless capabilities.</p>




        <%-- <p> <asp:TextBox ID="TextBox1" runat="server"  TextMode="MultiLine" Rows="50" Columns="80"  CssClass="styled-textbox" ></asp:TextBox>   </p>--%>



         <div>
             <Button class="btn btn-secondary">DOWNLOAD CV</Button>
         </div>
     </div>
 </div>
        </div>
    </form>
</body>
</html>
