<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.klef.ep.models.TableCounts" %>
<%@ page import="com.klef.ep.services.ManagementService" %>
<%@ page import="javax.naming.InitialContext" %>
<%
    // Initialize the context and service
    InitialContext context = new InitialContext();
ManagementService managementService = (ManagementService) context.lookup("java:global/HMSProject/ManagementServiceImpl!com.klef.ep.services.ManagementService");

    // Get the table counts using the getCount() method
    TableCounts counts = managementService.getCount();
    int doctorCount = counts.getDoctorCount();
    int patientCount = counts.getPatientCount();
    int receptionistCount = counts.getReceptionistCount();
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" type="image/png" href=""/>
    <meta charset="UTF-8">

    <style>
        body { font-family: Arial, Helvetica, sans-serif }
        * { box-sizing: border-box; margin: 0 }

        .bg-img {
            background-image: url('images/healthcare.jpg');
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
            margin: 10px;
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

        * { font-family: Open Sans; }

        .statistics-container {
            display: flex;
            justify-content: center;
            margin-top: 60px; /* Adjust the margin-top value to move the boxes somewhat above */
        }

        .statistics-box {
            flex: 1;
            max-width: 400px;
            background-color: #996600;
            padding: 10px;
            margin: 10px;
            margin-top: 0px; /* Adjust the margin-top value to move the individual boxes */
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            color: #fff;
            transition: transform 0.3s ease-in-out;
        }

        .statistics-box h2 {
            font-size: 24px;
            margin-bottom: 70px;
        }

        .statistics-box p {
            font-size: 50px;
            margin: 0;
        }

        .statistics-box:hover {
            transform: translateY(-5px);
            background-color: #99CCFF;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* ... Rest of your CSS ... */

    </style>
</head>
<body>
<div class="bg-img">
    <div class="container">
        <div class="topnav">
            <img src="images/navimage.jpg" alt="" style="width:10%">
            <a href="index.jsp"><i class="fa fa-key"></i> LOGOUT</a>
            <a href=""><i class="fa fa-key"></i> APPOINTMENTS</a>
            <a href="viewallpatients.jsp"><i class="fa fa-fw fa-user"></i>ALL PATIENTS</a>
            <a href="receptionistreg.jsp"><i class="fa fa-id-badge"></i> ADD RECEPTIONIST</a>
            <a href="adddoctor.jsp"><i class="fa fa-user-md"></i> ADD DOCTOR</a>
            <a href="adminhome.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>
        </div>
        <img src="" alt="" style="width:100%">
        <br><br><br>        <br><br><br>
                <br><br><br>
                <br><br><br>
                <br><br><br>
        
<div class="centered">
      
    <h1 style="font-size: 4vw;"><font color="black"> <br> Your Statistics are Ready ..</font></h1>

   </div>        
         <div class="statistics-container">
        <div class="statistics-box">
            <h2>Total Doctors</h2>
            <p><%= doctorCount %></p>
        </div>
        <div class="statistics-box">
            <h2>Total Patients</h2>
            <p><%= patientCount %></p>
        </div>
        <div class="statistics-box">
            <h2>Total Receptionists</h2>
            <p><%= receptionistCount %></p>
        </div>
    </div>
    </div>
</div>




<!-- ... Rest of your HTML ... -->

</body>
</html>
