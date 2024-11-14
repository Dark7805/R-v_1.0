package DAO;
import java.sql.*;
import java.util.*;


public class logindao {
    public static Connection con;
    public static PreparedStatement ps;
  static String url="jdbc:mysql://localhost:3306/food?zeroDateTimeBehavior=CONVERT_TO_NULL";
    
   static String uname="root";
   static String pwd= "@darK5609";
    public static Boolean check(String username,String password){
       try{
          Class.forName("com.mysql.cj.jdbc.Driver");
           
           con= DriverManager.getConnection(url,uname,pwd);
           ps=con.prepareStatement("select * from user where userid=? and pass=?");
           ps.setString(1,username);
           ps.setString(2,password);
           ResultSet rs = ps.executeQuery();
           if(rs.next()){
             System.out.println("Login successful for user: " + username);
             return true;
           }
           else{
                System.out.println("Login failed. No matching user found.");
                return false;
           }
       }catch(Exception e){e.printStackTrace();}
       return false;
    }
    public static int deletefromcart(int id){
      int s=0;
      try{
        con=DriverManager.getConnection(url,uname,pwd);
        ps=con.prepareStatement("delete from cart where food_id=?");
        ps.setInt(1, id);
        s=ps.executeUpdate();
 
        
      }
      catch(Exception e){
         e.printStackTrace();
      }
      return s;
    }
    
    public static int saveOrder(String uname,String pass){
         int s=0;
         try{
            con=DriverManager.getConnection(url,uname,pwd);
            ps=con.prepareStatement("insert into order (user_name,total_bill) values (?,?) ");
            ps.setString(1, uname);
            ps.setString(2, pass);
            s=ps.executeUpdate();
            
         }
         catch(Exception e){
           e.printStackTrace();
         }
         return s;
    }   
}