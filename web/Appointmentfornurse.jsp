<%-- 
    Document   : Appointmentfornurse
    Created on : Nov 22, 2016, 9:26:08 PM
    Author     : pradeep
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="pms.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            int i=0;
           
           
            Patient p= new Patient();
            ResultSet R=p.Getallpatientappointments();

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
        
    </body>
</html>
