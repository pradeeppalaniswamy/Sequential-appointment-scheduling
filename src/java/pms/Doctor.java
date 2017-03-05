/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pms;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author PRADEEP
 */

public class Doctor extends Employee{
    
 
    public Doctor( String Employee_Id)
    {
        super(Employee_Id);
    }
  public Doctor()
  {}

   // public Doctor() {
    //    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
   // }
   // public HashMap<String,String> getDetails()
    public void getDetails()
    {
    
        BAL bal=new BAL();
        HashMap<String,String> DoctorDetails=bal.getAllempdetails(get_EmployeeID());
        
    }
    
    
    public ResultSet getappoinments()
    {
    
        BAL bal=new BAL();
        
        return bal.getAppoinments(get_EmployeeID());
    
    }
    
  public void updateAppoinment(String Status,String id)
  {
  
  BAL bal=new BAL();
  bal.updateAppointment(Status,id);
          
  }
  //insert doctor
  
public int insertemp(String empid,String typeid,String fname,String lname,String deptid,String gender,String phoneno,String email,String blooggroup,String user,String pass)
{
    int succ;
    BAL bal=new BAL();
    succ=bal.insertemp(empid, typeid, fname, lname, deptid, gender, phoneno, email, blooggroup, user, pass);
    return succ;
}
public int delete(String empid)
{
    int succ;
    BAL bal=new BAL();
    succ=bal.deleteemp(empid);
    return succ;
}
public int edit(String empid,String phone,String email,String bloodgroup,String username,String password){
    int succ=0;
    BAL bal=new BAL();
    succ=bal.editemp(empid, phone, email, bloodgroup, username, password);
    return succ;
}



public ArrayList<String> getstimeslotids()
    {
    BAL bal1=new BAL();
    ArrayList<String> Timeslots=bal1.gettimeslots();
    return Timeslots;
    
    }

  /*  private void set_firstname(String get) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void set_EmployeeId(String get) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


  */

    public ResultSet getdocdetails()
    {
    BAL bal1=new BAL();
    ResultSet docdetails=bal1.getdoctordetailds();
    return docdetails;
    
    }
    
}
