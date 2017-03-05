
<%@page import="java.sql.ResultSet"%>
<%@page import="pms.Doctor"%>
<%@page import="pms.Patient"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
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
        <li><a href="Appointmentsnr.jsp" >Appointments</a></li>
        <li><a href="nrseviewstatus.jsp" class="active">view status</a></li>
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
                    
                    <select name="patientid" class="businessTypePullDownnrs form-control" id="patid1">
                        <% while(itr.hasNext()){%>
                        <option><%=itr.next() %></option>
                        <%}%>
                    </select>
                </label>
                    </div>
  <div id="apptdtls" class="col-md-10"></div>
     </div>
    
    
             
                        
          </div>
                 <div class="row">   <div class="col-md-1"></div></div>
    
       </div>
    </body>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</html>
