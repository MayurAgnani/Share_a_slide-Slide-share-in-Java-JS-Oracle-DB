<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>View Presentation</title>

</head>
<body>
<header class="top-bar" id="top">
	<div class="left">
		<a href="homenew.jsp"><img class="logo" alt="ShareaSlide" src="images/logo.png">
		<span class="heading"> SlideShare<span></a>
		<input type="text" placeholder="Search Keywords" class="search">
		<a href="profile.jsp"> <img alt="profile" src="images/photo.png" class="nav_photo"></a>
		<a href="upload.jsp" class="upload" >Share</a>
	</div>
	
	<div class="nav">
		<ul class="navele">
			<li class="navcommon"><a href="homenew.jsp">Home</a></li>
			<li class="navcommon"><a href="myfavorites.jsp">Favorites</a></li>
			<li class="navcommon"><a href="technology.jsp">Technology</a></li>
			<li class="navcommon"><a href="education.jsp">Education</a></li>
			<li class="navcommon"><a href="moretopics.jsp">More Topics</a></li>
		
		</ul>
	</div>

</header>
<%
HttpSession session1 = request.getSession(true);
String user = (String) session.getAttribute("UsernameSession");
%>
<div class="wrapper">
	<div class="content_aftlogin" >
		<section class="detailblock">
				<section class="sub_detailblock">
				<img src="images/photo.png" alt="photo" class="photo">
				<ul class="option">
					<li class="name"><p><%= user %></p></li>
					<li class="shareslide"><a href="upload.jsp"> Share </a></li>
					<li class="mypresentation"><a href="mypresentation.jsp"> My Presentation </a></li>
       				<li class="myfavorite"><a href="myfavorites.jsp"> My Favorites </a></li>
        			<li class="profile"><a href="profile.jsp"> Profile </a></li>
        			<li class="logout_side"><a href="home.jsp" <%session.invalidate(); %>> Logout </a></li>
        		</ul>
				</section>
		</section>
		<div class="content_ppt">
		<a class="prev" onclick="plusDivs(-1)"> &#10094; </a>
	 		<div class="display_ppt">
	
				<img class="display_image" alt="" src="images/thinkbig.jpg">
				<img class="display_image" alt="" src="images/chair.jpg">
				<img class="display_image" alt="" src="images/social.png">
		
			</div>
		<a class="next" onclick="plusDivs(1)">&#10095;</a>
		<img alt="" class="download" src="images/Download.png">
		</div>

		<script type="text/javascript">
		var slideIndex = 1;
		showDivs(slideIndex);
		
		function plusDivs(n) {
		  showDivs(slideIndex += n);
		}
		
		function showDivs(n) {
		  var i;
		  var x = document.getElementsByClassName("display_image");
		  if (n > x.length) {slideIndex = 1}    
		  if (n < 1) {slideIndex = x.length}
		  for (i = 0; i < x.length; i++) {
		     x[i].style.display = "none";  
		  }
		  x[slideIndex-1].style.display = "block";  
		}
		</script>
	
	</div>
	<div class="footer">
		<a href="login.jsp"> Login </a>
        <a href="privacy&termsaftlogin.jsp"> Privacy Policy </a>
        <a href="privacy&termsaftlogin.jsp"> Terms and Conditions </a>
        <a href="contactusaftlogin.jsp"> Contact Us </a>
        <a href="#top";> Back to Top </a>
	</div>
</div>

</div>



</body>
</html>