<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.ReceptionistService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Patient"%>
<%

InitialContext context = new InitialContext();
ReceptionistService receptionistService = (ReceptionistService) context.lookup("java:global/HMSProject/ReceptionistServiceImpl!com.klef.ep.services.ReceptionistService");

String name = request.getParameter("name");
String dob = request.getParameter("dob");
String address = request.getParameter("address");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String contact = request.getParameter("contactno");
String dage = request.getParameter("age");
int age =  (Integer) Integer.parseInt(dage);
String pweight = request.getParameter("weight");
int weight =  (Integer) Integer.parseInt(pweight);


Patient recp = new Patient();

recp.setName(name);
recp.setGender(gender);
recp.setEmail(email);
recp.setPhone(contact);
recp.setAddress(address);
recp.setAge(age);
recp.setWeight(weight);
recp.setDateofbirth(dob);

receptionistService.RegisterPatient(recp);

response.sendRedirect("registerpatient.jsp");


%>