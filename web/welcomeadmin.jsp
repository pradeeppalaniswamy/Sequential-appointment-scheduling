<%@page import="java.util.HashMap"%>
<%-- 
    Document   : welcome
    Created on : Apr 15, 2016, 12:06:16 PM
    Author     : PRADEEP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pms.Doctor"%>
<%@page import="pms.DbConnect"%>
<%@page import="pms.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String pos=" ";
    String id=" ";
    HttpSession s;
    try{ s =request.getSession();
 pos= s.getAttribute("position").toString();
    id=s.getAttribute("id").toString();
    }
    catch(Exception e)
    {}
%>

<html>
    <link rel="stylesheet" type ="text/css" href="Header.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<script src="javascript.js"></script>
    <head>
        meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Personal Info</title>

	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="admin.css">
    </head>
    <header>
		<h1>Hospital Management System</h1>
        <a href="Logout">Logout</a>
    </header>
      <ul>
        <li><a href="welcomeadmin.jsp" class="active">Personal Info</a></li>
        <li><a href="createemp.jsp">Add Employee</a></li>
        <li><a href="RemoveEmployee.jsp">Remove Employee</a></li>
        
    </ul>
    <div class="main-content">

        <!-- You only need this form and the form-basic.css -->
         <%s=request.getSession();
         String patid=s.getAttribute("id").toString();
         
         %>
            <%
                       Doctor D = new Doctor(id);
                       
                   %>

        <form class="form-basic" method="post" action="editpatient">

            <div class="form-title-row">
                <h1>Personal Info</h1>
            </div>
 <div class="form-row">
                <label>
                    <span>First name</span>
                    <input type="text" name="fname" value="<%=D.get_Firstname() %>" readonly="readonly" />
                </label>
            </div>
			<div class="form-row">
                <label>
                    <span>Last name</span>
                    <input type="text" name="lname" value="<%= D.get_LastName() %>" readonly="readonly" />
                </label>
                        </div>
            <div class="form-row">
                <label>
                    <span>Email</span>
                    <input type="email" name="email" value="<%=D.get_email() %>" readonly="readonly" />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Department</span>
                    <input type="text" name="Department" value="<%=D.get_Department() %>"readonly="readonly" />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Blood Group</span>
                   <input type="text" name="BloodGroup" value="<%= D.get_bloodgroup() %>" readonly="readonly"/>
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Username</span>
                    <input type="text" name="username" value="<%=D.get_username()%>" readonly="readonly" />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Password</span>
                    <input type="password" name="password" value="<%= D.get_password() %>" readonly="readonly" disabled="disabled" />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Employee id</span>
                    <input type="text" name="employeeid" value="<%= D.get_EmployeeID()%>" disabled="disabled" />
                </label>
            </div>
            	<div class="form-row">
                <label>
                    <span>Phone Number</span>
                    <input type="text" name="Pno">
                </label>
            </div>

        </form>

    </div>

</body>

</html>
