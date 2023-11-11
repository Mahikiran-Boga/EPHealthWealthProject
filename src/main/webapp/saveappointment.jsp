<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.ReceptionistService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.BookAppointment"%>
<%

InitialContext context = new InitialContext();
ReceptionistService receptionistService = (ReceptionistService) context.lookup("java:global/HMSProject/ReceptionistServiceImpl!com.klef.ep.services.ReceptionistService");

String dname = request.getParameter("name");
String speciality = request.getParameter("speciality");
String pname = request.getParameter("pname");
String issue = request.getParameter("issue");

BookAppointment book = new BookAppointment();

book.setDname(dname);
book.setSpeciality(speciality);
book.setPname(pname);
book.setIssue(issue);

receptionistService.saveAppointment(book);

response.sendRedirect("viewdoctors.jsp");


%>