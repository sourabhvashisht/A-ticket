<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>A-Tickets|Book Tickets</title>
		<meta charset="utf-8">
					<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
					<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
					<link rel="stylesheet" href="css/style3.css" type="text/css" media="all">
   					<link href="css/jquery-ui.min.css" rel="stylesheet">
        			<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        			<script type="text/javascript" src="js/jquery-ui.min.js"></script>
    
					<script type="text/javascript" src="js/cufon-yui.js"></script>
					<script type="text/javascript" src="js/cufon-replace.js"></script>
					<script type="text/javascript" src="js/Cabin_400.font.js"></script>
    				<script type="text/javascript">
    				$(function() {
                    	$("#Login").hover(function() {
                       		$("#Login-form").slideToggle('fast');
                	}); 
    			});
   					  $(function() {
                    	$("#datepicker").datepicker();
               			});
         				$(function() {
                    		$("#datepicker1").datepicker();
               			});
    </script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page3">
<div class="main">
  <!--header -->
  <header>
 <div class="wrapper">
				<h1>
					<a href="index.html" id="logo">Air Lines</a><span id="slogan">International Travel</span>
				</h1>
				<div class="right">
					<nav>
						<ul id="top_nav" class="ext-nav">
							<li id="Login">
                                <a href="#">Log-in</a>
                                     <form id="Login-form" action="loginServlet.java" method="post">
                                         <label><input type="email" name="username" placeholder="Email" /></label>
                                    <label><input type="password" name="password" placeholder="password" /></label>
                                    <input class="submit" type="submit" value="submit" />
                                    </form>
                            </li>
							<li class="bg_none"><a href="signup.html">Sign-up</a></li>
						</ul>
					</nav>
					<nav>
						<ul id="menu">
							<li id="menu_active"><a href="index.html">Home</a></li>
							<li><a href="book.html">Book-flight</a></li>
							<li><a href="flight.html">Flight-schedules</a></li>
							<li><a href="contact.html">Contact-Us</a></li>
                            <li><a href="about.html">About-Us</a></li>
                            
						</ul>
					</nav>
				</div>
			</div>
    </header>
      <article class="col1">
        <div class="box1">
          <h2 class="top">Hot Offers of the Week</h2>
          <div class="pad"> <strong>Birmingham</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 143.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LCY)</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 176.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 109.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LHR)</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 100.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 112.-</span><a href="book2.html">Zurich</a></li>
              <li><span class="right color1">from GBP 88.-</span><a href="book2.html">Basel</a></li>
            </ul>
            <strong>Manchester</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 97.-</span><a href="book2.html">Basel</a></li>
              <li><span class="right color1">from GBP 103.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>Edinburgh</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 165.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>Birmingham</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 143.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LCY)</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 176.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 109.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LHR)</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 100.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 112.-</span><a href="book2.html">Zurich</a></li>
              <li><span class="right color1">from GBP 88.-</span><a href="book2.html">Basel</a></li>
            </ul>
          </div>
        </div>
      </article>
    <article>
        <form action="Bookservlet.java" method="post">
            <label><span>From :</span>
            <input type="text" name="name"> </label>
             <label><span>To :</span>
            <input type="text" name="name"> </label>
             <label><span>Departure :</span>
            <input type="text" id="datepicker"> </label>
             <label><span>Return :</span>
            <input type="text" id="datepicker1"> </label>
             <label><span>Name :</span>
            <input type="text" name="name"><input type="button" class="button1" value="+"> </label>
            <label><span>Adult</span>
            <select>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
            </select> 
                Kids
             <select>
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
                Infants
             <select>
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
            </label>
            <label><span>Class :</span>
            <select class="select1">
                <option>economy</option>
                <option>executive</option>
                <option>first</option>
                <option>executive/economy</option>
                <option>first/executive</option>
                </select> </label>
            <input type="submit" value="Book" class="button2">
            
        </form>
    </article>
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
                    <li><a href="#"><img src="images/facebook1.png"> </a></li>
                    <li><a href="#"><img src="images/googleplus.png"> </a></li>
                    <li><a href="#"><img src="images/twitter1.png"> </a></li>
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
<script type="text/javascript">Cufon.now();</script>
</body>
</html>