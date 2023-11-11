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




/* If you don't want the footer to be responsive, remove these media queries */



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
    
    <a href="receptionistlogin.jsp"><i class="fa fa-key"></i> LOGOUT</a>
      <a href="registerpatient.jsp"><i class="fa fa-fw fa-user"></i>REGISTER PATIENT</a>
      <a href="viewdoctors.jsp"><i class="fa fa-book"></i> BOOK APPOINTMENT</a>
  
      <a href="receptionisthome.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>

     </div>
     <img src="images/receptionisthome.jpg" alt="" style="width:100%">
    </div>
  </div>

  
   <div class="centered">
       <br><br>
    <br><br>
    
   </div>

</div>


</body>
</html>
