<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.ManagementService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Doctor"%>
<%

InitialContext context = new InitialContext();
ManagementService managementService = (ManagementService) context.lookup("java:global/HMSProject/ManagementServiceImpl!com.klef.ep.services.ManagementService");



String name = request.getParameter("name");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String address = request.getParameter("address");
String dage = request.getParameter("age");
int age =  (Integer) Integer.parseInt(dage);
String dexp = request.getParameter("experience");
int experience =  (Integer) Integer.parseInt(dexp);
String email = request.getParameter("email");
String speciality = request.getParameter("speciality");

String contact = request.getParameter("contactno");

Doctor doc = new Doctor();
doc.setName(name);
doc.setGender(gender);
doc.setDateofbirth(dob);
doc.setAddress(address);
doc.setAge(age);
doc.setExperience(experience);
doc.setEmail(email);
doc.setSpeciality(speciality);
doc.setPhone(contact);
doc.setPassword(name+"@1");

managementService.AddDoctor(doc);

response.sendRedirect("adddoctor.jsp");


%>