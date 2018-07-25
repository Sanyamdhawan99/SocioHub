<%@page import="java.sql.*, DB.*" %>
<%
    try {
        String userid = request.getParameter("uid");
        String ans = request.getParameter("Text2");
        String qry = "select usersecans from tbuser where userid='"+userid+"'and usersecans='"+ans+"'";
        ResultSet rs = new Global().execute(qry);
        if(rs.next()) {
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
  <title>Reset Password</title>
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
        <script type="text/javascript">
            var check = function () {
                var pass1 = document.getElementById("p2").value;
                var pass2 = document.getElementById("p3").value;
                if (pass1 === pass2) {
                    document.getElementById("d1").style.color = 'green';
                    document.getElementById("d1").innerHTML = '*passwords match';
                } else {
                    document.getElementById("d1").style.color = 'red';
                    document.getElementById("d1").innerHTML = '*passwords donot match';
                }
            }
        </script>
    
</head>
<body>
    <div style="position: absolute; width: 364px; height: 28px; z-index: 2; left: 1030px; top: 485px" class="mbr-white">
        <span id="d1"></span>
    </div>

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
                            <span class="style4"><strong>Password Reset </strong></span></p>
			<form method="post" action="forgot3.jsp">
                            <input type="hidden" name="uid" value="<%=userid%>">
				<table style="width: 100%; height: 175px;">
					<tr>
						<td style="height: 52px; width: 216px">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
						&nbsp;<span class="mbr-white">Password&nbsp;</span></td>
						<td style="height: 52px">
                                                    <input name="Password1" id="p2" type="password" required onkeyup="check();"></td>
                                                <td id="s2" style="height: 52px"></td>
					</tr>
					<tr>
						<td style="height: 39px; width: 216px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="mbr-white">Confirm Password</span></td>
						<td style="height: 39px">
                                                    <input name="Password2" id="p3" type="password" required onkeyup="check();"></td>
						<td id="s3" style="height: 39px"></td>
					</tr>
					<tr>
						<td style="height: 106px; width: 216px"></td>
						<td style="height: 106px">
						<input name="Submit1" type="submit" value="Update"></td>
                                        
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
      
        }
    else {
        response.sendRedirect("index.html");
        }
    }
    catch(Exception e) {
        System.out.println(e);
    }
%>
