
<%@page import="com.klef.ep.models.Receptionist"%>
<%@page import="com.klef.ep.services.ReceptionistService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Management"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
    
<%

InitialContext context = new InitialContext();
ReceptionistService  receptionistService= (ReceptionistService) context.lookup("java:app/HMSProject/ReceptionistServiceImpl!com.klef.ep.services.ReceptionistService");

String uemail = request.getParameter("email");
String pwd = request.getParameter("pwd");

Receptionist manager = receptionistService.CheckReceptionistLogin(uemail, pwd);
if(manager!=null)
{   
	  //session is an implicit object
	   session.setAttribute("uemail", uemail);  // username is a session variable
	   response.sendRedirect("receptionisthome.jsp"); // will redirect to admin home
}
else
{
	request.setAttribute("loginStatus", "failed");
    request.getRequestDispatcher("receptionistlogin.jsp").forward(request, response);
}



%>