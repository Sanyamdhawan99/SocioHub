<%@page import="java.sql.*, DB.*" %>

<%
    try {
        String email = request.getParameter("Email1");
        String qry = "select userid from tbuser where userid='"+email+"'";
        ResultSet rs = new Global().execute(qry);
        if(rs.next()) {
            String qry2 = "select username, usersecques, usersecans from tbuser where userid='"+email+"'";
            ResultSet rs2 = new Global().execute(qry2);
            if(rs2.next()) {
            }
            %>
           <!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
  <meta name="description" content="">
  <title>Forgot Password</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
	<style type="text/css">
.style1 {
	border-radius: 3%;
	background-color: rgba(0,0,0, 0.5);
}
.style4 {
	color: #FFFFFF;
	font-size: xx-large;
}
</style>
  
  
  
</head>
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
                
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="index.html#header2-1">SocioHub</a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            
        </div>
    </nav>
</section>

<section class="engine"><a href="https://mobiri.se/m">web design templates</a></section><section class="cid-qWUxdSNA9J mbr-fullscreen mbr-parallax-background" id="header2-1">

    

    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(35, 35, 35);"></div>

    <div class="container align-center" style="left: -75px; top: -61px">
        <div class="row justify-content-md-center">
            <div class="mbr-white col-md-10" style="left: -42px; top: 51px">
                
                
                <p class="mbr-text pb-3 mbr-fonts-style display-5" style="height: 94px"><br><br>
				SocioHub helps you connect and <br>share with the people in your 
				life.<br></p>
                
            </div>
        </div>
    </div>
    <div style="position: absolute; width: 581px; height: 291px; z-index: 1; top: 288px; left: 877px" id="layer1" class="style1">
			<p>&nbsp;</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="style4"><strong>Welcome <%=rs2.getString("username")%> </strong></span></p>
			<form method="post" action="forgot2.jsp">
				<table style="width: 100%; height: 175px;">
					<tr>
						<td style="height: 52px; width: 216px">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
						&nbsp;<span class="mbr-white">Security Question&nbsp;</span></td>
						<td style="height: 52px">
                                                    <input name="Text1" type="text" value="<%=rs2.getString("usersecques")%>"></td>
						<td style="height: 52px"></td>
					</tr>
					<tr>
						<td style="height: 39px; width: 216px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="mbr-white">Security Answer</span></td>
						<td style="height: 39px">
                                                    <input name="Text2" type="text" required></td>
                                                <input name="uid" type="hidden" value="<%=email%>"
						<td style="height: 39px"></td>
					</tr>
					<tr>
						<td style="height: 106px; width: 216px"></td>
						<td style="height: 106px">
						<input name="Submit1" type="submit" value="Verify"></td>
						<td style="height: 106px"></td>
					</tr>
				</table>
				<br>
				<br>
			</form>
			<p>&nbsp;</p>
						
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
  
  <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i></i></a></div>
    <input name="animation" type="hidden">
</body>
</html>
                     
            <%
           //response.sendRedirect("forgot2.jsp");
        }
        else {
            response.sendRedirect("index.html");
        }
    }
    catch(Exception e) {
    System.out.println(e);
    }
%>