nbf,bn<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Implementing_Blog_Section.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>





     <style>
     /* Optional CSS for card styling */
     .card2 {
         margin-bottom: 42px;
         margin-left:70px;
         margin-right:70px;
         border: 3px solid #ccc;
         box-shadow:  0 4px 8px rgba(97, 183, 216, 0.1); /* Add box shadow */
     }
     .card2 img {
         width: 200px; /* Fixed width for the image */
         height: 280px; /* Fixed height for the image */
     }
     .card-content2 {
         padding: 10px;
         color: #333; /* Text color for card content */
     }
     /* Background color for odd rows */
    .odd-row2 {
         background-color:white;
     }
     /* Background color for even rows */
     .even-row2 {
         background-color: white;;
     }






      .photography{
          margin-top:50px;
     background-color:rgba(0, 0, 0, 0.082);
 }
 .TextContent{
     text-align:center;
     margin-top:12px;
 }
.slider {
     text-align: center; /* Center align the content */
     margin-top:20px;
 }


.TextContent p{
    color:#111212;
}
.TextContent h2 span{
    color:#e74d06;
}




 /*.styled-textbox {
     border: none;
     resize: none;  Disable resizing 
     background-color: transparent;  Make background transparent 
     font-family: inherit;  Inherit font family 
     font-size: inherit;  Inherit font size 
     width: 100%;  Full width 
     height: auto;  Auto height 
     padding: 0;  Remove padding 
     margin: 0;  Remove margin 
     outline: none;  Remove outline 
     overflow: hidden;  Hide overflow 
 }*/






 #BackButton{
      border-radius: 10px;
 background-color: #5adbb5;
 color: black;
 font-size: 16px;
 width: 180px;
 height: 40px;
 cursor: pointer;
 margin: 0 auto;
 display: block;
 transition: color 0.3s;
 margin-top:2.2rem;  
 }



 #ForwardButton{
          border-radius: 10px;
background-color: #4681f4;
color: black;
font-size: 16px;
width: 180px;
height: 40px;
cursor: pointer;
margin: 0 auto;
display: block;
transition: color 0.3s;
margin-top:2.2rem; 
 }


















 #timeline{
     background-color:darkgray;
 }

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
            <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio</title>
    <link rel="stylesheet" href="CSS/style.css">
    <style>
        .myFooter h2 {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="hamberger">
        <button class="navicon">
            <img src="images/equal_9548872.png" alt="">
        </button>

        <div class="mobile_nav ">
            <button class="close">
                <img src="images/close_2976286.png" alt="">
            </button>
            <ul>
                <li><a href="#">HOME</a></li>
                <li><a href="#about">ABOUT</a></li>
                <li><a href="#timeline">TIMELINE</a></li>
                <li><a href="#projects">PROJECT</a></li>
                <li><a href="#achievements">ACHIEVEMENTS</a></li>
                <li><a href="#blog">BLOG</a></li>
                <li><a href="#contact">CONTACT</a></li>
            </ul>
        </div>
    



        <header>
            <div class="container ">
                <nav id="mainnavigation" class="flex items-center justify-between">
    
                    <div class="Left flex items-center">
                        <div class="Logo">
                            <img src="images/Studenticon.svg" width="55px" height="60px">
                        </div>
                        <div class="Navigation">
                            <a href="#">HOME</a>
                            <a href="#about">ABOUT</a>
                            <a href="#timeline">TimeLine</a>
                            <a href="#projects">Project</a>
                            <a href="#achievements">Achievments</a>
                            <a href="#blog">BLOGS</a>
                            <a href="#contact">Contact</a>
                        </div>
                    </div>
                    <div class="Right ">
                        <Button class="btn btn-primary">Contact</Button>
                    </div>
    
                </nav>
    
    
    
                <div class="MyProfile flex items-center justify-between">
                    <div class="Left">
                        <img src="images/FirstPhoto.jpg" width="600px" height="450px">
                    </div>
                    <div class="Right">
                        <h4>Dipesh Takukdar</h4>
                        <h1>I am a <br><span>WebDeveloper, Student, AppDeveloper and SCOUT</span></h1>
                        <p id="innertext" >embark on the journey of academic excellence, where challenges become stepping stones to success.
                            with every lesson learned and every obstacle overcome, discover the boundless potential within.
                            let passion be your guide, determination your compass, and knowledge your greatest asset. in the
                            realm of academia, each endeavor is a brushstroke on the canvas of your potential. embrace the
                            pursuit of knowledge, for it is the key that unlocks doors to endless possibilities. your
                            academic journey is not just a path; it's a testament to your resilience, intelligence, and
                            limitless capabilities.</p>




                        <%-- <p> <asp:TextBox ID="TextBox3" runat="server"  TextMode="MultiLine" Rows="50" Columns="80"  CssClass="styled-textbox" ></asp:TextBox>   </p>--%>



                        <div>
                            <Button class="btn btn-secondary" onclick="window.open('./images/mycv.docx')"  >DOWNLOAD CV</Button>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        <section id="about" class="ABOUT">
            <div class="container flex items-center">
                <div class="photo2">
                    <img src="images/SecondPhoto.jpg" width="290.1" height="360">
                </div>
    
                <div class="textportion">
                    <h1>About <span>Me</span></h1>
                    <h3>Hello! i’m Dipesh Talukdar.</h3>
                    <p>
                        I am a Currently a Undergraduate student of Khulna University of Engineering and Technology
                        at CSE depaertment. This is my 5th Semester.I am an Active member of SZIPCE,which is  a Club
                        in Our Campus mainly guiding the students who are interested in Competitive Coding.
                        I am  also an Active member of KUET Radio and KUET Sanatani Association.</p>
                    <div class="socialLink  justify-between">
                        <a href="https://www.instagram.com/dipeshtalukdar/tagged/?hl=en"><img
                                src="images/instagram-logo.png"></a>
                        <a href="https://www.facebook.com/profile.php?id=100075988247612"><img
                                src="images/facebook (1).png"></a>
                        <a href="https://github.com/Dipesh63"><img src="images/github-sign (1).png"></a>
    
                    </div>
                </div>
            </div>
        </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        <section id="projects" class="Project">
            <div class="container">
                <h1 class="section-heading">My <span>Projects</span></h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt, quas?</p>
            </div>
            <div class="card-wrapper">
                <div id="appDevelopment" class="card">
                    <img src="images/mobile-app-development (1).png" >
                    <h2>App Development</h2>
                    <p>Design, code, test, iterate, deploy, refine, repeat.</p>
                </div>
                <div   id="webDevelopment"  class="card">
                    <img src="images/app-development (2).png" >
                    <h2>Web Development</h2>
                    <p>Design, code, HTML, CSS, JavaScript, test, deploy</p>
                </div>
                <div   id="oopProject"  class="card">
                    <img src="images/computer (1).png" >
                    <h2>OOP Project</h2>
                    <p>Objects encapsulate data, behavior, promote code reusability</p>
                </div>
                <div   id="gameDevelopment"   class="card">
                    <img src="images/computer (1).png" >
                    <h2>Game DEvelopmentt</h2>
                    <p>Objects encapsulate data, behavior, promote code reusability</p>
                </div>
            </div>
        </section>
    
    
    
    
  <script>
      window.onload = function () {
          // get references to the card elements
          var appDevelopmentCard = document.getElementById("appDevelopment");
          var webDevelopmentCard = document.getElementById("webDevelopment");
          var oopProjectCard = document.getElementById("oopProject");
          var gameDevelopmentCard = document.getElementById("gameDevelopment");

          // add click event listeners to each card
          appDevelopmentCard.addEventListener("click", function () {
              openInNewTab("https://github.com/Dipesh63/campus_connect");
          });

          webDevelopmentCard.addEventListener("click", function () {
              openInNewTab("https://github.com/Dipesh63/campus_connect");
          });

          oopProjectCard.addEventListener("click", function () {
              openInNewTab("https://github.com/Dipesh63/campus_connect");
          });

          gameDevelopmentCard.addEventListener("click", function () {
              openInNewTab("https://github.com/Dipesh63/campus_connect");
          });

          // function to open url in a new tab
          function openInNewTab(url) {
              var win = window.open(url, '_blank');
              if (win) {
                  win.focus();
              } else {
                  // if pop-up blocking is preventing the new tab, provide a fallback to open in the same window
                  window.location.href = url;
              }
          }
      }
  </script>

    
 










    <script>
        let navicon=document.querySelector('.navicon');
        let closeicon=document.querySelector('.close');
        let mobilenav=document.querySelector('.mobile_nav');

        navicon.addEventListener('click',function(){
            mobilenav.classList.add('open');


        });
        closeicon.addEventListener('click', function () {
            mobilenav.classList.remove('open');

            });
    </script> 







    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <section id="timeline" class="EducationAndExperience">
        <div class="textc">
            <h2 style="text-align:center;font-family:serif; ">TimeLine</h2>
            <p  style="text-align:center;  color:black; margin-top:1.2rem;   font-family:serif;  " >The past always looks better than it was. It’s only pleasant because it isn’t here</p>
        </div>


        <div class="container">
        
            <main class="row">
                
                <!--   *******  Education Section Starts  *******   -->
        
                <section class="col">
                    
                    <!--<header class="title">
                        <h2>EDUCATION</h2>
                    </header>-->
        
                    <div class="contents">
                        
                        <div class="box">
                            <h4>2018 - 2022</h4>
                            <h3>High School Degree</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
        
                        <div class="box">
                            <h4>2018 - 2022</h4>
                            <h3>Bachelor's Degree</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
        
                        <div class="box">
                            <h4>2018 - 2022</h4>
                            <h3>Master Degree</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
        
                    </div>
                </section>
        
                <!--   *******  Education Section Ends  *******   -->
        
                <!--   *******  Experience Section Starts  *******  -->
        
                <section class="col">
                    
                   <!--<header class="title">
                        <h2>EXPERIENCE</h2>
                    </header>-->
        
                    <div class="contents">
                        
                        <div class="box">
                            <h4>2018 - 2022</h4>
                            <h3>UI/UX Designer</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
        
                        <div class="box">
                            <h4>2018 - 2022</h4>
                            <h3>Full-Stack Developer</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
        
                        <div class="box">
                            <h4>2018 - 2022</h4>
                            <h3>Frontend Developer</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
        
                    </div>
                </section>
        
                <!--   *******  Experience Section Ends   *******  -->
            </main>
        </div>
    
    
        
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <section id="achievements" class="Myskills">
        <div class="skills_section">
            <div class="skills_head">
                <h2>My <span>Skills</span></h2>
                <p>Here is my skills to represent my Expertise</p>
            </div>
    
            <div class="skills_main">
                <div class="skill_bar">
                    <div class="info">
                        <p>HTML</p>
                        <P>90%</P>
                    </div>
                    <div class="bar">
                        <span class="html"></span>
                    </div>
                </div>
                <div class="skill_bar">
                    <div class="info">
                        <p >CSS</p>
                        <P>85%</P>
                    </div>
                    <div class="bar">
                        <span class="css"></span>
                    </div>
                </div>
                <div class="skill_bar">
                    <div class="info">
                        <p>App Development</p>
                        <P>80%</P>
                    </div>
                    <div class="bar">
                        <span class="sass"></span>
                    </div>
                </div>
                <div class="skill_bar">
                    <div class="info">
                        <p>Java Script</p>
                        <P>80%</P>
                    </div>
                    <div class="bar">
                        <span class="js"></span>
                    </div>
                </div>
                <div class="skill_bar">
                    <div class="info">
                        <p>PHP</p>
                        <P>75%</P>
                    </div>
                    <div class="bar">
                        <span class="react"></span>
                    </div>
                </div>
                <div class="skill_bar">
                    <div class="info">
                        <p>ASP.NET</p>
                        <P>70%</P>
                    </div>
                    <div class="bar">
                        <span class="node"></span>
                    </div>
                </div>
                
                
            </div>
        </div>
    
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <section id="blog" class="blog"  style=" clip-path:initial !important; background-color:black;  " >
        <div class="textdoc">
            <h2 style="color: aliceblue; margin-bottom: 28px; font-family: serif; font-size: 1.7rem;">My <span style="color: aqua">Blogs</span></h2>
            <p  style="color: aliceblue;font-family:sans-serif;font-size:1.2rem;  margin-bottom: 28px; "   >You have to believe in yourself when no one else does</p>
        </div>
      <div>
          <asp:ListView ID="ListView1" runat="server">
              <ItemTemplate>
                  <div class="card2">
                      <table style="width: 100%;">
                          <tr class='<%# Container.DisplayIndex % 2 == 0 ? "even-row2" : "odd-row2" %>'    "  >
                              <!-- First item template -->
                              <td style="width: 25%%; vertical-align: top;">
                                  <img src='<%# ResolveUrl("~/images/") + Eval("CardImage") %>'   style="width: 100% ;  height: 350px;  "  />
                              </td>

                              <!-- Second item template -->
                              <td style="width: 75%; vertical-align: top;">
                                  <div class="card-content2">
                                      <h2 style="margin-top: 0; text-align:left;"><%# Eval("CardContent") %></h2>
                                      <p style=" text-align:left;"><%# Eval("CardDate" ) %></p>
                                      <p style=" text-align:left;"><%# Eval("CardDetails") %></p>
                                      <p style="text-align:left; margin-top:1.4rem; "><a href="https://www.w3schools.com/"  style="text-decoration:none;"  >Read more......</a></p>
                                  </div>
                              </td>
                          </tr>
                      </table>
                  </div>
              </ItemTemplate>
          </asp:ListView>
      </div>
    </section>











<section class="photography">
    <div class="iframe-container">
        <iframe src="PhotographSection.aspx" frameborder="0" width="100%" height="600px"></iframe>
    </div>
</section>





















    
    
    
    
    
    
    
    
    <section id="contact" class="Contact">
    <div class="container">
        <h1>Contact <span>Me</span></h2>
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptate, magnam!</p>
        <div class="card_wrapper">
            <div class="card">
                <img src="images/phone-call.png" >
                <h2>Call me on</h3>
                <h4>+880-1714804105</h6>
            </div>
    
            <div class="card">
                <img src="images/email.png" >
                <h2>Email me at</h3>
                <h4>dipeshtalukdar35@gmail.com</h6>
            </div>
    
            <div class="card">
                <img src="images/facebook (2).png" >
                <h2>Facebook profile Link:</h3>
                <h4> <a href="https://www.facebook.com/profile.php?id=100075988247612">Click at here</a></h6>
            </div>
    
        </div>
    
    
    
    
<%--    <form action="">
    <div class="input_wrapper">
        <input type="text" placeholder="Enter Your Name........." class="entername">
        <input type="text" placeholder="Enter Your Email........" class="enteremail">
    </div>
    <div class="input_wrapper2">
        <input type="text" placeholder="Enter Your Subjects........." class="entersub">
       
        <textarea class="" id="" cols="30"  rows="4" placeholder="Write something..............." class="textsomething"></textarea>
        
        
    </div>
    <button class="sendmsgbtn btn-secondary">Send Message</button>
</form>--%>

            <%--<div class="leave-comment"  style="margin-top:2.8rem;" >
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Name........."  style="width:30%;height:2.6rem;" ></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server"   placeholder="Enter Your Email........" style="width:30%;height:2.6rem; margin-left:1.8rem;"  ></asp:TextBox><br />
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Your Subjects........." style="width:56%;height:2.6rem;margin-top:1.8rem;" ></asp:TextBox><br />
             
                <asp:TextBox ID="TextBox6" runat="server"   placeholder="Write Something........."  style="width:56%;height:4.6rem;margin-top:1.8rem;"  ></asp:TextBox><br />
                <asp:Button ID="Button3" runat="server" Text="Submit" Style="margin-top: 1.8rem; width: 6.6rem; height: 2.8rem;" OnClick="Button3_Click" />
            </div>--%>
            
        
    </div>
    </section>




































   
        <hr>
         <section class="myFooter" style="text-align:center;border:2px solid black; margin-left:80px;margin-right:80px;">
             
             <div class="adminloginContent"  >
                 
        <h2 style="font-family: sans-serif;">Welcome To My <span style="color:#3DCFD3;"> Admin Pannel</span></h2>
        <asp:Label ID="Label1" runat="server" Text="Label" style="margin-top:14px;font-size: 18px;width: 300px; height: 40px;">Enter UserName:</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-top:14px;font-size: 16px;width: 300px; height: 40px;"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter the usename" ControlToValidate="TextBox1" ForeColor="#FF5050"></asp:RequiredFieldValidator><br />



        <asp:Label ID="Label2" runat="server" Text="Label"  style="margin-top:14px;font-size: 18px;width: 300px; height: 40px;">Enter password:</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"  style="margin-top:14px;font-size: 16px;width: 300px; height: 40px;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter The Password" ControlToValidate="TextBox2" ForeColor="#FF0066"></asp:RequiredFieldValidator><br />

        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="cursor: pointer; margin-top:14px;font-size: 16px;width: 140px; height: 40px; background-color: #2ab21e;color:black;transition: color 0.3s; " />
                 <br />
                 <h4><a href="SignUp.aspx" style="text-decoration:none;" >Not Register Yet?SignUp</a></h4>
               
                 </div>
    </section>
    </div>

    <style>
            @media only screen and (max-width: 768px) {
    /* Adjust the layout for screens up to 768px wide */
    
    .myFooter {
        margin-top:250px;
        margin-right: 10px;
    }
    .adminloginContent{
        margin-top:50px;
    }
}
    </style>


   










</body>

</html>
        </div>
    </form>
</body>
</html>
