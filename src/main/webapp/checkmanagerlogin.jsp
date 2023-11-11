<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.klef.ep.services.ManagementService" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="com.klef.ep.models.Management" %>

<%
InitialContext context = new InitialContext();
ManagementService managementService = (ManagementService) context.lookup("java:global/HMSProject/ManagementServiceImpl!com.klef.ep.services.ManagementService");

String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");

Management manager = managementService.CheckAdminLogin(uname, pwd);

if (manager != null) {
    session.setAttribute("username", uname); // username is a session variable
    response.sendRedirect("adminhome.jsp"); // will redirect to admin home
} else {
    // Set loginStatus to "failed" and redirect to login.jsp
    request.setAttribute("loginStatus", "failed");
    request.getRequestDispatcher("login.jsp").forward(request, response);
}
%>
