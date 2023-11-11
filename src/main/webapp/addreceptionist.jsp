<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.ManagementService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Receptionist"%>
<%

InitialContext context = new InitialContext();
ManagementService managementService = (ManagementService) context.lookup("java:global/HMSProject/ManagementServiceImpl!com.klef.ep.services.ManagementService");

String name = request.getParameter("name");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String contact = request.getParameter("contact");

Receptionist recp = new Receptionist();

recp.setName(name);
recp.setGender(gender);
recp.setEmail(email);
recp.setPassword(name+"@1");
recp.setContactno(contact);

managementService.AddReceptionist(recp);

response.sendRedirect("receptionistreg.jsp");


%>