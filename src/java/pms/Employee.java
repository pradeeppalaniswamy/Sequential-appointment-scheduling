/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pms;

import java.sql.ResultSet;
import java.util.HashMap;

/**
 *
 * @author pradeep
 */
public class Employee {
    private String EmployeeId;
    private String Firstname;
    private String Middlename;
    private String LastName;
    private String Designation;
    private String Department;
    private String gender;
    private String phonenum;
    private String mailid;
    private String bloodgroup;
    private String username;
    private String password;
    private String email;
    private String  Excep;
    
    public Employee( String Id)
    {
        BAL bal=new BAL();
        HashMap<String,String> DoctorDetails=bal.getAllempdetails(Id);
        set_Firstname(DoctorDetails.get("FirstName"));
        set_LastName(DoctorDetails.get("LastName")); 
        set_gender(DoctorDetails.get("Gender" ));
                 set_phonenum(DoctorDetails.get("Phonenumber"));
                 set_email(DoctorDetails.get("Email" ));
                set_bloodgroup(DoctorDetails.get("Bloodgroup"));
                 set_username (DoctorDetails.get("username" ));
                 set_EmployeeID(DoctorDetails.get("employeeid"));
    set_Department(DoctorDetails.get("Department"));
    set_Designation(DoctorDetails.get("Type"));
    set_password(DoctorDetails.get("password"));
    set_Excep(DoctorDetails.get("Employeeexception")+DoctorDetails.get("DEPeeexception")+DoctorDetails.get("emptypeexception"));
    }

    public Employee()
    {}
    
    public String get_EmployeeID()
    {
    return EmployeeId;
    }
     public void set_EmployeeID(String EmployeeId )
     {
     this.EmployeeId=EmployeeId;
     }
     
     public String get_Firstname()
     {
         return Firstname;
     }
     public void set_Firstname(String Firstname)
     {
         this.Firstname=Firstname;
     }
      public String get_LastName()
     {
         return LastName;
     }
     public void set_LastName(String Lastname)
     {
         this.LastName=LastName;
     }
     public String get_gender()
     {
         return gender;
     }
     public void set_gender(String gender)
     {
         this.gender=gender;
     }
     public String get_phonenum()
     {
         return phonenum;
     }
     public void set_phonenum(String phonenum)
     {
         this.phonenum=phonenum;
     }
     public String get_email()
     {
         return email;
     }
     public void set_email(String email)
     {
         this.email=email;
     } 
     public String get_bloodgroup()
     {
         return bloodgroup;
     }
     public void set_bloodgroup(String bloodgroup)
     {
         this.bloodgroup=bloodgroup;
     } 
     public String get_username()
     {
         return username;
     }
     public void set_username(String username)
     {
         this.username=username;
     } 
     public String get_Department()
     {
         return Department;
     }
     public void set_Department(String Department)
     {
         this.Department=Department;
     } 
     public String get_Designation()
     {
         return Designation;
     }
     public void set_Designation(String Designation)

     {
         this.Designation=Designation;
     }
     public String get_password()
     {
         return password;
     }
         public void set_password(String password)
         {
             this.password=password;
         }
     public String get_Excep()
     {
         return Excep;
     }
         public void set_Excep(String Excep)
         {
             this.Excep=Excep;
         }
     
}


