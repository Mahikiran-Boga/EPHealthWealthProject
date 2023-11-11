<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.klef.ep.models.Doctor" %>
<%@page import="com.klef.ep.services.ReceptionistService"%>
<%@page import="javax.naming.InitialContext"%>


<!DOCTYPE html>
<html>
<head>
<script>
        function showMessage() {
            alert("Registration successful");
        }
</script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" type="image/png" href=""/>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
            margin: 0;
        }

        .bg-img {
            background-image: url('');
            min-height: 753px;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        .container1 {
            position: fixed;
            margin: 0;
            width: 100%;
        }

        .container {
            margin: 0;
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

        * {
            font-family: Open Sans;
        }

        /* CSS for Form Fields */

        form {
            max-width: 700px;
            margin: 0 auto;
            padding: 20px;
            background-color: transparent;
            border-radius: 5px;
            backdrop-filter: blur(10px);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: white;
        }

        .input-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .h1 {
            color: white;
        }

        .input-row .form-group {
            width: calc(50% - 10px);
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        /* End of CSS for Form Fields */
    </style>
</head>
<body>
<div class="bg-img">

    <div class="container1">
        <div class="topnav">
      <img src="images/navimage" alt="" style="width:10%">
    
    <a href="receptionistlogin.jsp"><i class="fa fa-key"></i> LOGOUT</a>
      <a href="registerpatient.jsp"><i class="fa fa-fw fa-user"></i>REGISTER PATIENT</a>
      <a href=""><i class="fa fa-car"></i> BOOK APPOINTMENT</a>
      <a href="receptionisthome.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>
    </div>
        <img src="images/black.webp" alt="" style="width:100%">

    </div>

    <br><br><br><br><br><br>
<% 	
InitialContext context = new InitialContext();
String doctorId = request.getParameter("doctorId");
if (doctorId != null) {
	int doctorIdInt = Integer.parseInt(doctorId);

	ReceptionistService doctorService = (ReceptionistService) context.lookup("java:global/HMSProject/ReceptionistServiceImpl!com.klef.ep.services.ReceptionistService");

    Doctor selectedDoctor = doctorService.retrieveDoctorDetails(doctorIdInt); // Use the instance to call the method
    if (selectedDoctor != null) {
        %>
        <div class="container">
            <form action="saveappointment.jsp" method="post">
                <div class="input-row">
                    <div class="form-group">
                        <label for="name">Name of the Doctor:</label>
                   <input type="text" id="name" name="name" value="<%= selectedDoctor.getName() %>"  required style="color: black;">
                    </div>
                </div>

                <div class="form-group">
                    <label for="speciality">Speciality:</label>
                 <input type="text" id="name" name="speciality" value="<%= selectedDoctor.getSpeciality() %>"  required style="color: black;">
                    
                </div>
                <div class="form-group">
                        <label for="name">Name of the Patient:</label>
                        <input type="text" id="name" name="pname"required>
                        <label for="address">Health Issue:</label>
                        <textarea id="issue" name="issue" required></textarea>
                    </div>
                <div class="form-group">
               <button onclick="showMessage()" type="submit">MAKE AN APPOINTMENT</button>
                </div>
            </form>
        </div>
        <% 
    } else {
        // Handle the case where the doctor with the given ID was not found
        out.println("Selected doctor not found.");
    }
} else {
    // Handle the case where the doctorId parameter is missing from the URL
    out.println("Doctor ID not provided.");
}
%>
    </div>
</body>
</html>
