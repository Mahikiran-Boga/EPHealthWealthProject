<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" type="image/png" href=""/>
    <meta charset="UTF-8">

<style>
body {font-family: Arial, Helvetica, sans-serif}
* {box-sizing: border-box;margin:0}

.bg-img {
  background-image: url('');
  min-height: 753px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.container {
  position: fixed;
  margin: 0px;
  width: 100%;
}
.topnav {
  overflow: hidden;
  background-color: #FBFBF9;
}

.topnav a {
  float: right;
  color: #000000;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  margin:10px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.centered {
  position: absolute;

  top: 33%;
  left: 50%;
  transform: translate(-50%, -50%);
}
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);

* {
  font-family: Open Sans;
}


.footer-distributed{
	background: #666;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 40%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Open Sans', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  lightseagreen;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
  font-weight:400;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #222;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
  font-weight:400;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  lightseagreen;
	text-decoration: none;;
}

.footer-distributed .footer-links a:before {
  content: "|";
  font-weight:300;
  font-size: 20px;
  left: 0;
  color: #fff;
  display: inline-block;
  padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
  content: none;
}

/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}

@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');


* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: 'Roboto', sans-serif;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 180px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 16px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.section_title {
    font-size: 40px;
    font-weight: bold;
    color: inherit;
    margin: 0;
    margin-bottom: 15px;
    text-align: center;
}

.section_details {
    text-align: center;
    font-size: 25px;
    color: #FFFFFFaa;
}

.our_service_section {
    background-color: #1f2429;
    background-image: url(bg.png);
    background-size: cover;
    background-position: left top;
    background-repeat: no-repeat;
    min-height: 100vh;
    color: #fff;
    position: relative;
    padding: 100px 20px;
}

.our_service_section>* {
    position: relative;
    z-index: 1;
}

.our_service_section::before {
    content: '';
    background-image: linear-gradient(150deg, #fdfdfd2e -50%, transparent 70%);
    display: inline-block;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    clip-path: polygon(100% 0, 0 100%, 100% 100%);
}

.our_service_section>.single_service_container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 400px));
    justify-content: center;
    gap: 30px;
    margin-top: 80px;
}
.dropdown {
  float: right;
  overflow: hidden;
  font-size: 17px;
}

.our_service_section>.single_service_container>.single_service {
    max-width: 450px;
    background-color: #505050;
    padding: 25px 30px;
    border-radius: 6px 6px 0px 6px;
    box-shadow: 0 5px 16px #0008;

    transition: 0.3s ease-in-out;
}

.our_service_section>.single_service_container>.single_service .top {
    display: flex;
    align-items: center;
    margin-bottom: 30px;
}

.our_service_section>.single_service_container>.single_service .top .icon {
    background: rgba(255, 255, 255, 0.096);
    display: inline-block;
    min-width: 100px;
    height: 100px;
    font-size: 50px;
    color: #ffffff5d;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 4px solid #ffffff5d;
    box-shadow: 0 5px 10px #0003;
    transition: 0.3s ease-in-out;
}

.our_service_section>.single_service_container>.single_service .top .text {
    width: 100%;
    margin-left: 20px;
}

.our_service_section>.single_service_container>.single_service .top .text .__one,
.our_service_section>.single_service_container>.single_service .top .text .__two {
    margin: 15px 0;
}

.our_service_section>.single_service_container>.single_service .top .text .__one {
    color: #fff9;
}

.our_service_section>.single_service_container>.single_service .top .text .__two {
    font-size: 22px;
    color: #fffe;
}

.our_service_section>.single_service_container>.single_service .bottom {
    color: #fffd;
    font-size: 18px;
    line-height: 1.5;
    font-weight: 400;
}

.our_service_section>.single_service_container>.single_service:hover {
    background-color: #41D8C9;
}

.our_service_section>.single_service_container>.single_service:hover .icon {
    border-color: #fff;
    background-color: #FFC85B;
    color: #fff;
}
</style>
</head>
<body>
<div class="bg-img">
    
  <div class="container">
    <div class="topnav">
      
              <img src="images/navimage.jpg" alt="" style="width:10%">
         
         <div class="dropdown">
            <a href="" ><i class="fa fa-user-circle"></i> LOGIN AS <i class="fa fa-caret-down"></i></a>
            <div class="dropdown-content">
            <br><br><br>
                <a href="login.jsp"><i class=""></i> MANAGEMENT</a>
                <a href="receptionistlogin.jsp"><i class=""></i> RECEPTIONIST</a>
            </div>
        </div>
      <a href="about.html"><i class="fa fa-globe"></i> ABOUT</a>
      <a href="index.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>

     </div>
     <img src="images/home.jpg" alt="" style="width:100%">
    </div>
  </div>

  
   <div class="centered">
       <br><br>
    <br><br>
    <h1 style="font-size: 3vw;"><font color="black">We work for your Health !! <br> Make an Appointment Now ..</font></h1>

   </div>

</div>
<section class="our_service_section">
  <h3 class="section_title">Our Services</h3>
  <p class="section_details">
    We provide different services which are mentioned below
  </p>

  <div class="single_service_container">

    <!-- single service start -->
    <div class="single_service">
      <div class="top">
        <span class="icon">
          <i class="fa fa-money"></i>
        </span>
        <div class="text">
          <h4 class="__one">Feature One</h4>
          <h3 class="__two">Book at any time & anywhere</h3>
        </div>
      </div>

      <div class="bottom">
        <p>
          A car rental, hire car or car hire agency is a company that rents automobiles for short periods of time to the public, generally ranging from a few hours to a few weeks
          Book car rental at affordable prices in 20+ Indian cities.
        </p>
      </div>
    </div>
    <!-- single service end -->

    <!-- single service start -->
    <div class="single_service">
      <div class="top">
        <span class="icon">
          <i class="fa fa-money"></i>
        </span>
        <div class="text">
          <h4 class="__one">Feature Two</h4>
          <h3 class="__two">Affordable Prices</h3>
        </div>
      </div>

      <div class="bottom">
        <p>
         Rent a car for a day, week or month with Revv, best car rental service provider company in India.
          dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type
          specimen
          book.
        </p>
      </div>
    </div>
    <!-- single service end -->

    <!-- single service start -->
    <div class="single_service">
      <div class="top">
        <span class="icon">
          <i class="fa fa-money"></i>
        </span>
        <div class="text">
          <h4 class="__one">Feature Three</h4>
          <h3 class="__two">Insurance Coverage</h3>
        </div>
      </div>

      <div class="bottom">
        <p>
          Rental car insurance is insurance coverage for a rental car. Insurance coverage secures the hire car from any damages like theft, third party loss
           Renew car insurance at lowest cost. <br><br>Car insurance starts at @ ₹2094/year
        </p>
      </div>
    </div>
    <!-- single service end -->

  </div>

</section>

<footer class="footer-distributed">

			<div class="footer-left">

                <h3><B>WHEELS</B><span><b> 4 RENT</b></span></h3>

				<p class="footer-links">
					<a href="" class="link-1">Home</a>

					<a href="">Login</a>

					<a href="">About</a>

					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">Wheels 4 rent  © 0099</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>KL University</span> Vijayawada,Andhra Pradesh</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+91 8639558161</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="wheels4rent@outlook.com">wheels4rent@outlook.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					We provide car's for rent. We work for your drive and make your drive happily
				</p>

				<div class="footer-icons">

					<a href=""><i class="fa fa-facebook"></i></a>
					<a href=""><i class="fa fa-twitter"></i></a>
					<a href=""><i class="fa fa-linkedin"></i></a>
					<a href=""><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>
</body>
</html>