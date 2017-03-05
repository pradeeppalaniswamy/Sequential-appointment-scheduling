<%-- 
    Document   : appointmentupdate
    Created on : Nov 18,2016, 1:23:55 AM
    Author     : PRADEEP
--%>

<%@page import="pms.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%   
    String appointmentid =request.getParameter("appointmentid");
 
     Patient  P =new Patient();
     P.cancelappointment(Integer.parseInt(appointmentid));
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
