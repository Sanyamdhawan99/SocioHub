<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Mobirise v4.8.0, mobirise.com">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link rel="shortcut icon" href="assets/images/logo.gif" type="image/x-icon">
        <meta name="description" content="">
        <title>Edit Profile</title>
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
            }
            .style3 {
                font-size: medium;
            }
            .style4 {
                color: #666666;
                background-color: #FFFDE8;
            }
            .style5 {
                font-size: x-large;
                color: #666666;
            }
            .style6 {
                color: #666666;
                font-size: medium;
            }
            .style8 {
                border-style: dashed;
                border-width: 1px;
                padding: 1px 4px;

            }
            .style9 {
                padding: 10px 2px;
                box-shadow:2px 2px 2px 2px #cccccc;
                background-color: #ffffff;
            }
            .style10 {
                padding: 1px 1px;
                box-shadow:1px 1px #cccccc;
                background-color: white;
            }
            .style11 {
                text-align: left;
                color: #666666;
            }
            .style12 {
                text-align: left;
            }
        </style>
    </head>
    <%@page import="java.sql.*, DB.*" %>
    <%
        try {
            HttpSession ss = request.getSession();
             if(ss.getAttribute("userid")==null) {
                response.sendRedirect("index.html");
            }
            String uid = (String)ss.getAttribute("userid");
            String email = request.getParameter("id");
            String qry = "select username, userimg, ifnull(useradd,'')useradd, ifnull(usermob,'')usermob, ifnull(userqualification,'')userqualification, ifnull(userinterest,'')userinterest, ifnull(Bio,'')Bio, ifnull(userdob,'')userdob from tbuser where userid='" + uid + "'";
            ResultSet rs = new Global().execute(qry);

            if (rs.next()) {
    %>

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
                <div class="style8" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item">
                            <a class="nav-link link text-white display-4" href="home.jsp?id=<%=ss.getAttribute("userid")%>">
                                <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                                Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link link text-white display-4" href="viewprof.jsp?id=<%=uid%>"><span class="mbrib-user mbr-iconfont mbr-iconfont-btn"></span>Profile</a></li>
                     
                        <li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="mbrib-users mbr-iconfont mbr-iconfont-btn"></span>Friends</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="searchuser.jsp?id=<%=email%>">Search User</a><a class="text-white dropdown-item display-4" href="viewfriendlist.jsp?id=<%=email%>">Friend List</a><a class="text-white dropdown-item display-4" href="checkreq.jsp?id=<%=email%>">Friend Requests</a></div></li><li class="nav-item">
                       

                        <li class="nav-item"><li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="mbrib-chat mbr-iconfont mbr-iconfont-btn"></span>Messages</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="sendmessage.jsp?id=<%=email%>">Send Message</a><a class="text-white dropdown-item display-4" href="viewmessages.jsp?id=<%=email%>">View Messages</a></div></li><li class="nav-item"><li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="socicon socicon-googlegroups mbr-iconfont mbr-iconfont-btn"></span>Groups</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="creategroup.jsp?id=<%=email%>">Create Group</a><a class="text-white dropdown-item display-4" href="existinggroups.jsp?id=<%=email%>">Existing Groups</a><a class="text-white dropdown-item display-4" href="joinedgroups.jsp?id=<%=email%>">Joined Groups</a></div></li><li class="nav-item">    <li class="nav-item dropdown"><a class="nav-link link text-white dropdown-toggle display-4" href="#top" data-toggle="dropdown-submenu" aria-expanded="false"><span class="mbrib-setting mbr-iconfont mbr-iconfont-btn"></span>Settings</a><div class="dropdown-menu"><a class="text-white dropdown-item display-4" href="editprof.jsp">Edit Profile</a><a class="text-white dropdown-item display-4" href="changepass.jsp">Change Password</a><a class="text-white dropdown-item display-4" href="changesec.jsp">Change Security</a><a class="text-white dropdown-item display-4" href="changepic.jsp">Change Profile Photo</a></div></li><li class="nav-item"><a class="nav-link link text-white display-4" href="logout.jsp"><span class="mbrib-logout mbr-iconfont mbr-iconfont-btn"></span>Logout</a></li>
                        <li class="nav-item">
                            <a class="nav-link link text-white display-4" href="home.jsp?id=<%=ss.getAttribute("userid")%>">
                            </a>
                        </li></ul>

                </div>
            </nav>
        </section>

        <section class="mbr-fullscreen" id="header2-1" style="background-color: #fffde8">


            <div style="position: absolute; width: 218px; height: 577px; z-index: 1; left: 1293px; top: 86px; " id="layer4" class="style10" >
                <br>
                <br><br><br><br><br><br><br><br>
                <strong><span class="style2">&nbsp;</span></strong><br>
                <strong><span class="style3">&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="style2">
                        <br>
                        &nbsp;&nbsp;&nbsp; </span></strong><br>
                <br>
                <br>

            </div>


            <div style="position: absolute; width: 201px; height: 600px; z-index: 1; left: 75px; top: 55px; " id="layer1" class="style10" >
                <br>
                <div style="position: absolute; width: 150px; height: 150px; z-index: 1; left: 22px; top: 63px" id="layer2">
                    <a href="viewprof.jsp?id=<%=email%>" ><img src="<%=rs.getString("userimg")%>" width="150" height="150" alt="profile image" style="border-radius: 50%"></a>
                </div>
                <br><br><br><br><br><br><br><br>
                <strong><span class="style2">&nbsp;&nbsp;&nbsp;<%=rs.getString("username")%></span></strong>

                <br>
                <strong><span class="style3">&nbsp;&nbsp;&nbsp; </span><span class="style2">
                        <br>
                        &nbsp;&nbsp;&nbsp; Bio</span></strong><br>
                <br>
                <div style="position: absolute; width: 194px; height: 172px; z-index: 2; left: -1px; top: 310px" id="layer3" class="style4">
                    <span class="style2"><%=rs.getString("Bio")%></span>
                </div>
                <br>

            </div>

            <div style="position: absolute; width: 709px; height: 506px; z-index: 1; top: 142px; left: 375px" id="layer4 " class="style9">
                <form method="post" action="editprof2">
                    <table style="width: 108%; height: 461px">
                        <tr>
                            <td colspan="2" class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PROFILE<br>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12" style="width: 289px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">USERNAME</span></td>
                            <td style="width: 295px">
                                <input name="Text1" type="text" readonly  value="<%=rs.getString("username")%>"></td>
                        </tr>
                        <tr>
                            <td class="style12" style="width: 289px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">E-mail Id</span></td>
                            <td style="width: 295px">
                                <input name="Text2" type="email" readonly value="<%=email%>"></td>
                        </tr>
                        <tr>
                            <td class="style12" style="width: 289px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="style6">MOBILE No.</span></td>
                            <td style="width: 295px"><input name="Text5" type="num" readonly  maxlength="10" minlength="10" value="<%=rs.getString("usermob")%>" >&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12" style="width: 289px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style3">
                                </span><span class="style6">&nbsp;&nbsp;&nbsp; 
                                    QUALIFICATION</span></td>
                            <td style="width: 295px"><input name="Text6" type="text" readonly value="<%=rs.getString("userqualification")%>" >&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12" style="width: 289px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="style6">&nbsp;&nbsp; ADDRESS</span></td>
                            <td style="width: 295px">
                                <textarea name="TextArea1" cols="20" rows="2" readonly ><%=rs.getString("useradd")%></textarea>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12" style="width: 289px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="style6">&nbsp;&nbsp;&nbsp; INTEREST</span></td>
                            <td style="width: 295px">
                                <textarea name="TextArea2" cols="20" rows="2" readonly ><%=rs.getString("userinterest")%></textarea></td>
                        </tr>
                        <tr>
                            <td class="style11" style="width: 289px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                BIO</td>
                            <td style="width: 295px">
                                <textarea name="TextArea3" cols="20" rows="2" readonly > <%=rs.getString("Bio")%> </textarea>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12" style="width: 289px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="style6">DATE of BIRTH</span></td>
                            <td style="width: 295px"><input name="Text4" type="date" readonly value="<%=rs.getString("userdob")%>"></td>
                        </tr>
                      
                    </table>
                </form>
            </div>

        </section>



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
        <%
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
        <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i></i></a></div>
        <input name="animation" type="hidden">
    </body>
</html>