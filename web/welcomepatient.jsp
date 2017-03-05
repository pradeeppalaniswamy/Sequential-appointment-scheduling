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
       <li><a href="welcomepatient.jsp"class="active">Personal Info</a></li>
        <li><a href="book.jsp">Book Appointment</a></li>
        <li><a href="viewuser.jsp">View Report</a></li>
        
    </ul>
    <div class="main-content">

        <!-- You only need this form and the form-basic.css -->
         <%s=request.getSession();
         String patid=s.getAttribute("id").toString();
         
         %>
          <% Patient P=new Patient(patid);    %>

        <form class="form-basic" method="post" action="editpatient">

            <div class="form-title-row">
                <h1>Personal Info</h1>
            </div>
 <div class="form-row">
     
                <label>
                    <span>First name</span>
                    
                    <input type="text" name="fname" value="<%=P.fname %>" readonly="readonly" />
                </label>
            </div>
			<div class="form-row">
                <label>
                    <span>Last name</span>
                    <input type="text" name="lname" value="<%= P.lname %>" readonly="readonly" />
                </label>
                        </div>
            <div class="form-row">
                <label>
                    <span>Email</span>
                    <input type="email" name="email" value="<%=P.email %>"   />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Blood Group</span>
                   <input type="text" name="bg" value="<%= P.bloodgroup %>" />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Username</span>
                    <input type="text" name="user" value="<%=P.username %>"  />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Password</span>
                    <input type="password" name="pass" value="<%= P.password %>" readonly="readonly" disabled="disabled" />
                </label>
            </div>
			 <div class="form-row">
                <label>
                    <span>Patient id</span>
                    <input type="text" name="pid" value="<%= P.PatientId %>" readonly="readonly" />
                </label>
            </div>
            	<div class="form-row">
                <label>
                    <span>Phone Number</span>
                    <input type="text" name="pno" value="<%=P.PhoneNumber%>"/>
                </label>
            </div>

                <button  action ="submit" class="btn-primary">Update </button>
                
        </form>

    </div>

</body>

</html>
