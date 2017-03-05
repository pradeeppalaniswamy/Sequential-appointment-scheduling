
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link href="newcss.css" rel="stylesheet" type="text/css"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Book Appointment</title>

	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="admin.css">
    </head>
    <header>
		<h1>Hospital Management System</h1>
        <a href="Logout">Logout</a>
    </header>
      <ul>
        <li><a href="welcomenurse.jsp">Personal Info</a></li>
        <li><a href="patientsearchnr.jsp" >Patient Search</a></li>
        <li><a href="Appointmentsnr.jsp" class="active">Appointments</a></li>
            <li><a href="nrseviewstatus.jsp" >view status</a></li>
        <li><a href="viewreportnr.jsp">View Report</a></li>
        <li><a href="addreportnr.jsp">Add Report</a></li>
    </ul>
<div class="container">
    <div class="col-md-1"></div>
    <div class="jumbotron col-md-12">
        <!-- You only need this form and the form-basic.css -->
       <div class="col-md-1"></div>
          <div class="jumbotron whitebck col-md-10">   

       
            <div class="form-title-row">
                <h1>Book Appointment </h1>
            </div>
            
  <%Patient p = new Patient();
   ArrayList<String> patid= p.getAllpatids();
  Iterator itr  =patid.iterator();
  
                                    Doctor d = new Doctor();
  
                                ResultSet r=d.getdocdetails();
                                      
                           
  %>
    
        <div class="row text-primary"><span><h4>choose a patient no</h4></span></div>
            <div class="row">
                <label>
                    
                    <select name="patientid" class="businessTypePullDown form-control" id="patid">
                        <% while(itr.hasNext()){%>
                        <option><%=itr.next() %></option>
                        <%}%>
                    </select>
                </label>
                    </div>
         <div class="row text-primary"><span><h4>Choose Doctor Details</h4></span></div>
                    <div class="row">
                      <select name="Docdetail"  class="form-control" id="docdetailpulldwn" required>
                                 <%            
                     while(r.next())
                             {
                             %>
                                 <option>
                                     <%=
                                         r.getString("employee_id") +":" +r.getString("Fname")+":"+r.getString("Lname")+":"+r.getString("department_name")
                                         %>
                                 </option>
                        <%}%>
                     </select>
            </div>
         
         
   
         
         <div class="row text-primary"> CHOOSE APPROPRIATE DAY</div>
         <div class="row"><input type="date" name="aptday" id="aptday" class="form-control" required></div>
         <div class="row text-primary"><span><h4>CHOOSE APPROPRIATE TIME SLOT</h4></span></div>
        <div class="row">
    <select name="timeslot"  class="form-control" id="timeslot" required>
                        <% 
                            ArrayList<String> timslots=d.getstimeslotids();
                                        
    itr  =timslots.iterator();
                                        while(itr.hasNext())
                {%>
                        <option><%=itr.next() %></option>
                        <%}%>
                        
    </select> </div>
                    
                         
                 
            <div class="row text-center margintop20">
             <h2 class="text-center"> <Button class ="btn-primary btn-lg margintop20"  id="nrbookappointment"> Book Appointment</button></h2>
             <div id="appointmntstatus1" class="row"></div>
           </div>
        
         <div id ="patientdetailsin" class="margintop20"></div>
          </div>
 </div>
    </div>
                    
    </html>

