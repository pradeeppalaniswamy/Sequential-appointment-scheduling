<%-- 
    Document   : patientdetailsfetch
    Created on : Apr 28, 2016, 3:29:19 PM
    Author     : PRADEEP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pms.Patient"%>

<!DOCTYPE html>
<% String PatId =request.getParameter("patid"); %>
<html>
    <link rel="stylesheet" type ="text/css" href="newcss.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<script src="javascript.js"></script>
   
    <head>
       <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
    
    <body>
        
        <div id="patientdetailfetch">
            
            <h3 class="text-primary">Selected Patient Details </h4>
            <% Patient P=new Patient(PatId);    %>
            <div class="text-center text-muted" >
                        <h4>    
    <table  class="table table-hover col-md-12">
          
                <thead>
                    <tr class="info">
                        <td>Appnt#</td>
                        <td>Doctor name</td>
                        <td>Date</td>
                        <td>Time</td>
                        <td>Status</td>
                        <td>Cancel</td>
                    </tr>
                </thead>
           <tbody>
        
        <%
            int i=0;
           
           
            Patient p= new Patient();
            ResultSet R=p.Getallpatientappointments(PatId);
while(R.next())        {
    
String status=R.getString("confirmation");
    
if( status.equalsIgnoreCase("bkd"))
{
        %>
        
        <tr class="warning">                  
                       <td><%= R.getInt("appointmentid")%></td>
                        <td><%= R.getString("fname")%></td>
                        <td><%= R.getString("day")%></td>
                        <td><%= R.getString("value")%></td>
                        <td>NEW</td>
                        <td> <button class="btn btn-warning cancelbtn" id="<%= R.getInt("appointmentid")%>">Cancel </button></td>
                    </tr>
                
            
     
 <%}
else if(status.equalsIgnoreCase("apr"))
{
%>
    
          
                
                    <tr class="success">
                        <td><%= R.getInt("appointmentid")%></td>
                        <td><%= R.getString("fname")%></td>
                        <td><%= R.getString("day")%></td>
                        <td><%= R.getString("value")%></td>
                        <td>Confirmed</td>
                    </tr>
                
            


                        <%}
else if(status.equalsIgnoreCase("rej"))
{
%>

<tr class="error">
                        <td><%= R.getInt("appointmentid")%></td>
                        <td><%= R.getString("fname")%></td>
                        <td><%= R.getString("day")%></td>
                        <td><%= R.getString("value")%></td>
                        <td>Rejected</td>
                    </tr>
                
 
                        
                        
        <%


}}
       
      %>       
        

                            
        </tbody></table>         
                        
                        </h4>
                        
</div>

        </div>
        
       
    </body>
</html>
