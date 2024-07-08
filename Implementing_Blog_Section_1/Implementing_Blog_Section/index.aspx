<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Implementing_Blog_Section.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                        <p>Embark on the journey of academic excellence, where challenges become stepping stones to success.
                            With every lesson learned and every obstacle overcome, discover the boundless potential within.
                            Let passion be your guide, determination your compass, and knowledge your greatest asset. In the
                            realm of academia, each endeavor is a brushstroke on the canvas of your potential. Embrace the
                            pursuit of knowledge, for it is the key that unlocks doors to endless possibilities. Your
                            academic journey is not just a path; it's a testament to your resilience, intelligence, and
                            limitless capabilities.</p>
                        <div>
                            <Button class="btn btn-secondary">DOWNLOAD CV</Button>
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
    
    
    
<!--    
    
    <script>
        window.onload = function() {
            // Get references to the card elements
            var appDevelopmentCard = document.getElementById("appDevelopment");
            var webDevelopmentCard = document.getElementById("webDevelopment");
            var oopProjectCard = document.getElementById("oopProject");
            var gameDevelopmentCard = document.getElementById("gameDevelopment");
    
            // Add click event listeners to each card
            appDevelopmentCard.addEventListener("click", function() {
                openInNewTab("https://chat.openai.com/c/b87bb5cb-f440-4aae-be86-879824196796");
            });
    
            webDevelopmentCard.addEventListener("click", function() {
                openInNewTab("https://chat.openai.com/c/b87bb5cb-f440-4aae-be86-879824196796");
            });
    
            oopProjectCard.addEventListener("click", function() {
                openInNewTab("https://chat.openai.com/c/b87bb5cb-f440-4aae-be86-879824196796");
            });
    
            gameDevelopmentCard.addEventListener("click", function() {
                openInNewTab("https://chat.openai.com/c/b87bb5cb-f440-4aae-be86-879824196796");
            });
    
            // Function to open URL in a new tab
            function openInNewTab(url) {
                var win = window.open(url, '_blank');
                if (win) {
                    win.focus();
                } else {
                    // If pop-up blocking is preventing the new tab, provide a fallback to open in the same window
                    window.location.href = url;
                }
            }
        }
    </script>
    
 -->










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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <section id="blog" class="blog">
        <div class="container">
            <h2>My <span>Blog</span></h2>
            <p class="abbr">Lorem ipsum dolor sit amet consectetur 
                adipisicing elit. Numquam, eveniet.</p>
              <div class="card_wrapper">
    
    
    
                <div class="card">
                    <div class="img_wrapper" >
                        <img src="images/AppDevelopmentPhoto.jpg" alt="">
                    </div>
                    <div class="card_content">
                        <a href="#">
                            <h3>Lorem ipsum dolor sit amet consectetur adipisicing.</h2>
    
                        </a>
                        <span>February 16,2024</span>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, tenetur, culpa sint deleniti libero optio tempore
                            harum nemo alias deserunt minima velit maiores obcaecati ratione, est sequi 
                            doloribus rerum perferendis.</p>
                            <a href="#">Read More...</a>
                    </div>
                </div>
    
    
    
    
    
    
    
                <div class="card">
                    <div class="img_wrapper" >
                        <img src="images/AppDevelopmentPhoto.jpg" alt="">
                    </div>
                    <div class="card_content">
                        <a href="#">
                            <h3>Lorem ipsum dolor sit amet consectetur adipisicing.</h2>
    
                        </a>
                        <span>February 16,2024</span>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, tenetur, culpa sint deleniti libero optio tempore
                            harum nemo alias deserunt minima velit maiores obcaecati ratione, est sequi 
                            doloribus rerum perferendis.</p>
                            <a href="#">Read More...</a>
                    </div>
                </div>
    
    
    
    
    
    
    
    
                <div class="card">
                    <div class="img_wrapper" >
                        <img src="images/AppDevelopmentPhoto.jpg" alt="">
                    </div>
                    <div class="card_content">
                        <a href="#">
                            <h3>Lorem ipsum dolor sit amet consectetur adipisicing.</h2>
    
                        </a>
                        <span>February 16,2024</span>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, tenetur, culpa sint deleniti libero optio tempore
                            harum nemo alias deserunt minima velit maiores obcaecati ratione, est sequi 
                            doloribus rerum perferendis.</p>
                            <a href="#">Read More...</a>
                    </div>
                </div>
    
    
    
                
    
    
    
              </div>  
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
    
    
    
    
    <form action="">
        <div class="input_wrapper">
            <input type="text" placeholder="Enter Your Name........." class="entername">
            <input type="text" placeholder="Enter Your Email........" class="enteremail">
        </div>
        <div class="input_wrapper2">
            <input type="text" placeholder="Enter Your Subjects........." class="entersub">
           
            <textarea class="" id="" cols="30"  rows="4" placeholder="Write something..............." class="textsomething"></textarea>
            
            
        </div>
        <button class="sendmsgbtn btn-secondary">Send Message</button>
    </form>
        
    </div>
    </section>




































    <section class="myFooter">
        <hr>
        <h2>Welcome To My Admin Pannel</h2>
        <asp:Label ID="Label1" runat="server" Text="Label">Enter UserName:</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Label">Enter password:</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="SubMit" OnClick="Button1_Click" />
    </section>
    </div>













</body>

</html>
        </div>
    </form>
</body>
</html>
