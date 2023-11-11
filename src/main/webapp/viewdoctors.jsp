<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.List"  %>
<%@page import="com.klef.ep.services.ReceptionistService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Doctor"%>
<%@page import="com.klef.ep.models.Management"%>
<!DOCTYPE html>
<html>
<head>
<script>
        function showMessage() {
            alert("Booking successful");
        }
</script>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="shortcut icon" type="image/png" href="{% static 'images/favicon.ico' %}"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0px;
background-image: url('images/black.webp');
}
body {font-family: Arial, Helvetica, sans-serif}

html {
  box-sizing: border-box;margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
}
.checked {
  color: orange;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 22.0%;
  margin-bottom: 16px;
  margin-left: 35px;
  padding: 0 8px;
}


 .card {
            box-shadow: 0 4px 20px 0 rgba(0, 0, 0, 0.2);
            margin: 8px;
            height: 430px;
            border-radius: 15px; /* Apply border-radius to all corners */
            background-color: white;
            overflow: hidden; /* Ensure content inside card does not overflow rounded corners */
        }

.about-section {

  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.ccontainer {
  padding: 0 16px;
  margin: 0px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 12px;
  color: white;
  background-color: green;
  text-align: center;
  cursor: pointer;
  width: 100%;
  border-radius: 40px;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px){
  .column {
    width: 40%;
    display: block;
  }
}
.container {
  position: fixed;
  margin: 0px;
  width: 100%;
}
.topnav {
  overflow: hidden;
  background-color: #FBFBF9;
  margin:0px;
}


/* Navbar links */
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

</style>
</head>
<body>
<div class="container">
    <div class="topnav">
      <img src="images/navimage" alt="" style="width:10%">
    
    <a href="receptionistlogin.jsp"><i class="fa fa-key"></i> LOGOUT</a>
      <a href="registerpatient.jsp"><i class="fa fa-fw fa-user"></i>REGISTER PATIENT</a>
      <a href=""><i class="fa fa-car"></i> BOOK APPOINTMENT</a>
      <a href="receptionisthome.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>
    </div>
         <img src="" alt="" style="width:100%">

  </div>
<br><br>
<br><br>
<br><br><br><br>
<br><br>
<%
InitialContext context = new InitialContext();
ReceptionistService receptionistService = (ReceptionistService) context.lookup("java:global/HMSProject/ReceptionistServiceImpl!com.klef.ep.services.ReceptionistService");

List<Doctor> doclist = receptionistService.ViewAllDoctors();

//out.println("Number of doctors: " + doclist.size());


for(Doctor doc : doclist)
{
   %>
   <div class="column">
    <div class="card">
      <center><img src="images/doctor.jpg" alt="Mike" style="width:100%" height="175"></center>
      <div class="ccontainer">
        <p>Doctor ID :<%=doc.getId()%></p>
        <p>Doctor Name:<%=doc.getName()%>  </p>
        <p>Specialty : <%=doc.getSpeciality()%></p>
        <p>Experience in (yrs) : <%=doc.getExperience()%></p> 
        
        <span class="fa fa-star checked"></span>
       <span class="fa fa-star checked"></span>
       <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span>
        <br/><br/>
        <a href="processappointment.jsp?doctorId=<%=doc.getId()%>"><button class="button">BOOK APPOINTMENT</button></a>
      </div>
    </div>
  </div>
   
   
   <%
}

%>

</body>
</html>
