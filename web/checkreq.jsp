<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Mobirise v4.8.0, mobirise.com">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link rel="shortcut icon" href="assets/images/logo.gif" type="image/x-icon">
        <meta name="description" content="">
        <title>Home</title>
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/socicon/css/styles.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">



        <style type="text/css">
            .style2 {
                font-size: large;
                font-color: #cccccc;
            }
            .style3 {
                font-size: medium;
            }
            .style11 {
                padding: 1px 1px;
                box-shadow: 1px 1px #cccccc;
                background-color: #FFFFFF;
            }
            .style12 {
                background-color: #FFFDE8;
            }
            .style13 {
                text-align: center;
            }
        </style>
        <%
            try {

                String uid = request.getParameter("id"); //uid-> jisne request bhejhi hai
                HttpSession ss = request.getSession();
                 if(ss.getAttribute("userid")==null) {
                response.sendRedirect("index.html");
            }
                String email = (String) ss.getAttribute("userid"); // main working id --> jisne login kia hua hai
                // for side line
                String qry = "select username, bio, userimg from tbuser where userid='" + email + "'";
                ResultSet rs = new Global().execute(qry);

                if (rs.next()) {
                    ss.setAttribute("userimg", rs.getString("userimg"));
        %>    
        <script>
          function acceptreq(){
            document.getElementById("isE").style.color = "green";
            document.getElementById("isE").innerHTML = "Friend request accepted!";
            alert("Friend request accepted!");
        }
        function rejectreq(){
            document.getElementById("isE").style.color = "red";
            document.getElementById("isE").innerHTML = "Friend request rejected!";
            alert("Friend request rejected!");
        }
    </script>
    </head>
    <%@page import="java.sql.*, DB.*" %>

    <body>
        <section class="menu cid-qWUxeo3Mrf" once="menu" id="menu1-2">



            <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <div class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </button>
                <div class="menu-logo">
                    <div class="navbar-brand">
                        <span class="navbar-logo">
                            <a href="#top">
                                <img src="assets/images/logo.gif" alt="SocioHub" title="Logo" style="height: 3.8rem;">
                            </a>
                        </span>
                        <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="index.html#header2-1">SocioHub</a></span>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item">
                            <a class="nav-link link text-white display-4" href="home.jsp?id=<%=email%>">
                                <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                                Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link link text-white display-4" href="viewprof.jsp?id=<%=email%>"><span class="mbrib-user mbr-iconfont mbr-iconfont-btn"></span>Profile</a></li>
                        <li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="mbrib-users mbr-iconfont mbr-iconfont-btn"></span>Friends</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="searchuser.jsp?id=<%=email%>">Search User</a><a class="text-white dropdown-item display-4" href="viewfriendlist.jsp?id=<%=email%>">Friend List</a><a class="text-white dropdown-item display-4" href="checkreq.jsp?id=<%=email%>">Friend Requests</a></div></li><li class="nav-item">

                        <li class="nav-item"><li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="mbrib-chat mbr-iconfont mbr-iconfont-btn"></span>Messages</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="sendmessage.jsp?id=<%=email%>">Send Message</a><a class="text-white dropdown-item display-4" href="viewmessages.jsp?id=<%=email%>">View Messages</a></div></li><li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="socicon socicon-googlegroups mbr-iconfont mbr-iconfont-btn"></span>Groups</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="creategroup.jsp?id=<%=email%>">Create Group</a><a class="text-white dropdown-item display-4" href="existinggroups.jsp?id=<%=email%>">Existing Groups</a><a class="text-white dropdown-item display-4" href="joinedgroups.jsp?id=<%=email%>">Joined Groups</a></div></li><li class="nav-item">    <li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="mbrib-setting mbr-iconfont mbr-iconfont-btn"></span>Settings</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="editprof.jsp">Edit Profile</a><a class="text-white dropdown-item display-4" href="changepass.jsp">Change Password</a><a class="text-white dropdown-item display-4" href="changesec.jsp">Change Security</a><a class="text-white dropdown-item display-4" href="changepic.jsp">Change Profile Photo</a></div></li><li class="nav-item"><a class="nav-link link text-white display-4" href="logout.jsp"><span class="mbrib-logout mbr-iconfont mbr-iconfont-btn"></span>Logout<form method="post">
                                </form>
                            </a></li>
                        <li class="nav-item">
                            <a class="nav-link link text-white display-4"  href="home.jsp?id=<%=email%>">
                            </a>
                        </li></ul>

                </div>
            </nav>
        </section>

        <section class="mbr-fullscreen" id="header2-1" style="background-color: #fffde8">
            <div style="position: relative; width: 218px; z-index: 1; left: 1293px; top: 86px; " id="layer4" class="style11" >
                <br>
                <br><br><br><br><br><br><br><br>
                <strong><span class="style2">&nbsp;</span></strong><br>
                <strong><span class="style3">&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="style2">
                        <br>
                        &nbsp;&nbsp;&nbsp; </span></strong><br>
                <br>
                <br>

            </div>


            <div style="position: absolute; width: 201px; height: 546px; z-index: 1; left: 75px; top: 55px; " id="layer1" class="style11" >
                <br>
                <div style="position: absolute; width: 150px; height: 200px; z-index: 1; left: 22px; top: 63px" id="layer2">
                    <a href="viewprof.jsp?id=<%=email%>"> <img src="<%=rs.getString("userimg")%>" width="150" height="150" alt="profile image" style="border-radius: 50%"> </a>
                </div>
                <br><br><br><br><br><br><br><br>
                <strong><span class="style2">&nbsp;&nbsp;&nbsp;<%=rs.getString("username")%></span></strong>

                <br>
                <strong><span class="style3">&nbsp;&nbsp;&nbsp; </span><span class="style2">
                        <br>
                        &nbsp;&nbsp;&nbsp; Bio</span></strong><br>
                <br>
                <div style="position: absolute; width: 194px; height: 172px; z-index: 2; left: -1px; top: 310px" id="layer3" class="style12">
                    <span class="style2"><%=rs.getString("Bio")%></span>
                </div>
                <br>

            </div>
            <div style="position: absolute; width: 850px; z-index: 2; left: 388px; top: 105px;" id="layer5" class="style11">
                <div style="position: absolute; width: 770px; z-index: 1; left: 36px; top: 45px" id="layer6" class="style13">

                </div>
                <div style="position: relative; width: 768px; z-index: 2; left: 33px; top: 2px; height: 380px;" id="layer7">
                    <table style="width: 100%; height: 309px;">
                        <%
                            try {
                                String qry2 = "select a.sno, a.userid, b.userimg, b.username from tbfriend a, tbuser b where a.fid='" + email + "'and reqstatus=" + 0 + " and a.userid=b.userid";
                                ResultSet rs2 = new Global().execute(qry2);
                                int count = 0;
                                while (rs2.next()) {
                                    count++;
                        %>
                        <td style="height: 271px">
                            <div class="row">
                                <a href="viewprof2.jsp?id=<%=rs2.getString("a.userid")%>">    <img src="<%=rs2.getString("b.userimg")%>" height="150px" width="150px" style="border-radius: 50%"> </a>
                            </div>
                            <div class="row">
                                <%=rs2.getString("b.username")%>
                            </div>
                            <div class="row">
                                (<%=rs2.getString("a.userid")%>)

                            </div>
                            <br>
                            <div class="row">
                                <button onclick="acceptreq()"><a href="accept?fid=<%=rs2.getString("a.userid")%>&sno=<%=rs2.getString("a.sno")%>">ACCEPT</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <button onclick="rejectreq()"><a href="reject?sno=<%=rs2.getString("a.sno")%>">REJECT</a></button>
                            </div>
                          
                        </td>
                        <span id="isE"></span>
                        <%
                                if (count % 3 == 0) {
                                    out.println("<tr></tr>");
                                }
                            }
                            if(count == 0) {
                            %>
                            <br> <br>
                            <div style="color: red"><b>No friend requests pending</b></div>
                            <%
}
                        %>
                        

                    </table>
                </div>
            </div>

        </section>

     
        <%
            } catch (Exception e) {
                System.out.println(e);
            }

        %>

        <section class="cid-qWVfwSoQrB mbr-reveal" id="footer2-5">
            <div class="container">
                <div class="media-container-row content mbr-white">
                    <div class="col-12 col-md-3 mbr-fonts-style display-7">
                        <p class="mbr-text">
                            <strong>Address</strong>
                            <br>
                            <br>#243, Himalaya Hostel, Punjab Engineering College, Chandigarh, 160012<br>
                            <br>
                            <br><strong>Contacts</strong>
                            <br>
                            <br>Email: sanyamdhawan0001@gmail.com &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>Phone: +91 9530610167<br></p>
                    </div>
                    <div class="col-12 col-md-3 mbr-fonts-style display-7">
                        <p class="mbr-text">
                            <strong>Links</strong>
                            <br>
                            <br><a class="text-primary" href="https://mobirise.com/">Website builder</a>
                            <br><a class="text-primary" href="https://mobirise.com/mobirise-free-win.zip">Download for Windows</a>
                            <br><a class="text-primary" href="https: //mobirise.com/mobirise-free-mac.zip">Download for Mac</a>
                            <br>
                            <br><strong>Feedback</strong>
                            <br>
                            <br>Please send us your ideas, bug reports, suggestions! Any feedback would be appreciated.
                        </p>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="google-map"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0Dx_boXQiwvdz8sJHoYeZNVTdoWONYkU&amp;q=place_id:ChIJS0BchILyDzkR6cbcy_dLhMA" allowfullscreen=""></iframe></div>
                    </div>
                </div>
                <div class="footer-lower">
                    <div class="media-container-row">
                        <div class="col-sm-12">
                            <hr>
                        </div>
                    </div>
                    <div class="media-container-row mbr-white">
                        <div class="col-sm-6 copyright">
                            <p class="mbr-text mbr-fonts-style display-7">
                                © Copyright 2018 SocioHub - All Rights Reserved
                            </p>
                        </div>
                        <div class="col-md-6">

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <script src="assets/web/assets/jquery/jquery.min.js"></script>
        <script src="assets/popper/popper.min.js"></script>
        <script src="assets/tether/tether.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/dropdown/js/script.min.js"></script>
        <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
        <script src="assets/smoothscroll/smooth-scroll.js"></script>
        <script src="assets/parallax/jarallax.min.js"></script>
        <script src="assets/theme/js/script.js"></script>
        }
        <%                }
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
        <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i></i></a></div>
        <input name="animation" type="hidden">

    </body>
</html>

