<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
               <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
                <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
                <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
                 <link href="css/jquery-ui.min.css" rel="stylesheet">
        		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
                
                <script type="text/javascript" src="js/cufon-yui.js"></script>
                <script type="text/javascript" src="js/cufon-replace.js"></script> 
                <script type="text/javascript" src="js/Myriad_Pro_italic_600.font.js"></script>
                <script type="text/javascript" src="js/Myriad_Pro_italic_400.font.js"></script>
                <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
                 <script type="text/javascript">
                $(function (){
                	 $("#login").hover(function() {
	                       $("#login-form").slideToggle("normal");
                  });
                });
<!--[if lt IE 9]>
	<script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->

</head>
<body>
<!-- header -->
		<header>
			<div class="wrapper">
				<h1>
					<a href="index.jsp" id="images/logo">Air Lines</a><span id="slogan">International Travel</span>
				</h1>
				<div class="right">
					<nav>
						<ul id="top_nav" class="ext-nav">
							<li id="login">
                                <a href="#">Log-in</a>
                                     <form id="login-form" action="../src/com.aticket/LoginServlet.java" method="post">
                                    <label><input class="text" type="email" name="username" placeholder="Email" /></label>
                                    <label><input class="text" type="password" name="password" placeholder="password" /></label>
                                    <input class="submit" type="submit" value="submit" />
                                    </form>
                            </li>
							<li class="bg_none"><a href="signup.jsp">Sign-up</a></li>
						</ul>
					</nav>
					<nav>
						<ul id="menu">
							<li id="menu_active"><a href="index.jsp">Home</a></li>
							<li><a href="book.jsp">Book-flight</a></li>
							<li><a href="flight.jsp">Flight-schedules</a></li>
							<li><a href="contact.jsp">Contact-Us</a></li>
                            <li><a href="about.jsp">About-Us</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		<div id="set">
                <h1 >Login</h1>
            <form id="login_form" action="LoginServlet.java" method="post">
            
            
                <label>
                    <span>E-mail :</span> 
                    <input type="email" placeholder="E-mail" name="email" id="email"/>
                </label>
                
                <label>
                   <span>password :</span> 
                   <input type="password" placeholder="password" name="password" id="pass1" />
                </label>
                
               
                
                <label class="lbl">
                    <input onclick="check()" type="submit" value="Submit" /> 
                    <input type="button" value="cancel" />   
                </label>
            </form>
    </div>
     <footer>
            <div class="section1">
                <h3>Company</h3>
                <ul>
                    <li><a href="#">About A-Tickets</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Sponsership</a></li>
                    <li><a href="#">Trade partners</a></li>
                    <li><a href="#">Services</a></li>
                </ul>
            </div>
            <div class="section1">
                <h3>Follow Us</h3>
                <ul class="social">
                    <li><a href="http://www.facebook.com"><img src="images/facebook1.png"> </a></li>
                    <li><a href="http://www.googleplus.com"><img src="images/googleplus.png"> </a></li>
                    <li><a href="http://www.twitter.com"><img src="images/twitter1.png"> </a></li>
                </ul>
            </div>
            <div class="section1">
                <h3>Contact us</h3>
                <ul>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Offices</a></li>
                    <li><a href="#">Enquiries & feedback</a></li>
                </ul>
            </div>
            <div class="section1">
                <h3>Legal</h3>
                <ul>
                    <li><a href="#">Legal</a></li>
                    <li><a href="#">Privacy policy</a></li>
                    <li><a href="#">Cookie policy</a></li>
                    <li><a href="#">Accessibilty</a></li>
                </ul>
            </div>
        </footer>
        <footer class="second">
            &copy; A-Tickets - All rights reserved ! 
        </footer>
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>