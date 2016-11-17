<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A-Tickets</title>
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
                    $(function() {
                        $("#login").hover(function() {
	                       $("#login-form").slideToggle('fast');
                    }); 
                        
                         setInterval("rotateImage()" , 2000);
                    });
                    
                    function rotateImage() {
                   var curphoto = $('#blueberry div.current');
                 var nxtphoto = curphoto.next();
                 if(nxtphoto.length == 0)
                     nxtphoto = $('#blueberry div:first');
                     
                 curphoto.removeClass('current').addClass('previous');
                 nxtphoto.css({opacity:0.0}).addClass('current').animate({opacity :1.0},1000 , function() {
                     curphoto.removeClass('previous');
                 });
                }
                $(function() {
                    $("#datepicker").datepicker();
               });
                $(function() {
                    $("#datepicker1").datepicker();
               });
                </script>
                <style type="text/css">
        #blueberry {
                max-width: 1024px;
                margin-top: 20px;
                position: relative;
                margin-left: 15%;
                margin-bottom: 35%;
            }
            #blueberry div {
                position: absolute;
                z-index: 0;
            }
            #blueberry div.previous {
                z-index: 1;
            }
            #blueberry div.current {
                z-index: 2;
            }
            </style>
</head>
<body>
<!-- header -->
		<header>
			<div class="wrapper">
				<h1>
					<a href="index.jsp" id="logo">Air Lines</a><span id="slogan">International Travel</span>
				</h1>
				<div class="right">
					<nav>
						<ul id="top_nav" class="ext-nav">
							<li id="login">
                                <a href="#">Log-in</a>
                                     <form id="login-form" action="LoginServlet.java" method="post">
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
   <div id="blueberry">
                        <div id="current"> <img src="images/1-1.jpg" width= "900px" height= "400px"/></div>
                        <div> <img src="images/1-2.jpg" width = "900px" height= "400px"/></div>
                        <div> <img src="images/1-3.jpg" width = "900px" height= "400px"/></div>
                        <div> <img src="images/img5.jpg" width = "900px" height= "400px" /></div>
                </div>
    <section>
				 <form action="bookFlight.java" method="post">
                     <h2>Your Flight Planner</h2>
                    <div class="rdio">
                        <input type="radio">one-way&nbsp;&nbsp;&nbsp;
                        <input type="radio">Return&nbsp;&nbsp;&nbsp;
                    </div>
                    <label><span>From :</span>
                        <input type="text" placeholder="Type/select departure City"></label>
                    <label><span>To :</span>
                        <input type="text" placeholder="Type/select  City"></label>
                    <label><span>Departing :</span>
                        <input id="datepicker" type="text"></label>
                    <label><span>Returning :</span>
                        <input id="datepicker1" type="text"></label>
                    <label><span>promocode :</span>
                        <input type="text" placeholder="promoCode"></label>
                        <input type="button" class="button1" value="Search">
                </form>
    </section>
    <section>
        <h2>Welcome to our Website!</h2>
			<p class="color1">Air Lines is a free web template created by TemplateMonster.com team. This website template is optimized for 1024X768 screen resolution. </p>
			<div class="marker">
				<div class="wrapper">
					<p class="pad_bot2"><strong>Aircraft</strong></p>
					<p class="pad_bot2">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione.</p>
				</div>
			</div>
			<div class="wrapper pad_bot2"><a href="#" class="button1">Read More</a></div>
			<div class="marker">
				<div class="wrapper">
					<p class="pad_bot2"><strong>Charters</strong></p>
					<p class="pad_bot2">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
				</div>
			</div>
			<div class="wrapper pad_bot2">
				<a href="#" class="button1">Reservation</a>
				<a href="#" class="button2">Fleet</a>
			</div>
    </section>
				<article class="cols">
					<h2>Our Clients</h2>
					<p><strong>Avero eoset</strong> accusamus et iusto odio dig- nissimos ducimus qui blanditiis praesentium voluptatum deleniti.</p>
					<p>Atque corrupti quos dolores et quas moles- tias excepturi sint <a href="#">occaecati cupiditate</a> non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
				</article>
                <article>
                    <div class="box1">
					   <div class="pad_1">
						<div class="wrapper">
							<p class="pad_bot2">Lorem ipsum dolor sit amet, consectetur adip- isicing elit, sed do eius- mod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis </p>
							<p><span class="right">Mr. Thomas Lloyd</span>&nbsp;<br></p>
						  </div>
					   </div>
				    </div>
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