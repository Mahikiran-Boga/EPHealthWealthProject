<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.List" %>
<%@ page import="com.klef.ep.services.ManagementService"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="com.klef.ep.models.Patient"%>
<%@ page import="com.klef.ep.models.BookAppointment"%>
<!DOCTYPE html>
<html>
<head>
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

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        html {
            box-sizing: border-box;
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .checked {
            color: orange;
        }

        *,
        *:before,
        *:after {
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

        .container::after,
        .row::after {
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

        .container {
            position: fixed;
            margin: 0px;
            width: 100%;
        }

        .topnav {
            overflow: hidden;
            background-color: #FBFBF9;
            margin: 0px;
        }

        /* Navbar links */
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

        /* Your existing table styles */
        #tablecolor {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #tablecolor td,
        #tablecolor th {
            border: 5px solid #ddd;
            padding: 2px;
        }

        #tablecolor tr:nth-child(even) {
            background-color: #f2f2f2;
            
        }

        #tablecolor tr:hover {
            background-color: #ddd;
        }

        #tablecolor th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #181818;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="topnav">
            <img src="images/navimage.jpg" alt="" style="width:10%">
            <a href="index.jsp"><i class="fa fa-key"></i> LOGOUT</a>
            <a href=""><i class="fa fa-book"></i> APPOINTMENTS</a>
            <a href="viewallpatients.jsp"><i class="fa fa-fw fa-user"></i>ALL PATIENTS</a>
            <a href="receptionistreg.jsp"><i class="fa fa-car"></i> ADD RECEPTIONIST</a>
            <a href="adddoctor.jsp"><i class="fa fa-user-md"></i> ADD DOCTOR</a>
            <a href="adminhome.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>
        </div>
        <img src="" alt="" style="width:100%">
    </div>
    <br><br>
    <br><br>
    <br><br><br><br>
    <br><br>
    <div class="center">
        <table id="tablecolor">
            <tr bgcolor="#000000" align="center">
                <th>DOCTOR NAME </th>
                <th>SPECIALTY</th>
                <th>PATIENT NAME</th>
                <th>ISSUE</th>
               
            </tr>
            <%
                InitialContext context = new InitialContext();
                ManagementService managementService = (ManagementService) context.lookup("java:global/HMSProject/ManagementServiceImpl!com.klef.ep.services.ManagementService");
                List<BookAppointment> alist =managementService.viewAllAppointments();

                for (BookAppointment pl : alist) {
            %>
            <tr style="font-weight:bold" bgcolor="white" align="center">
    <td><%=pl.getDname()%></td>
    <td><%=pl.getSpeciality()%></td>
    <td><%=pl.getPname()%></td>
    <td><%=pl.getIssue()%></td>
           </tr>

            <%
                }
            %>
