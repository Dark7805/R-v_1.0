
package conn;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class Conn {
    
    
     public static Connection con;
    public static PreparedStatement ps;
     static String url="jdbc:mysql://localhost:3306/food?zeroDateTimeBehavior=CONVERT_TO_NULL";
    
   static String uname="root";
   static String pwd= "@darK5609";
   
   
   public static Connection getConnect(){
      try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           con=DriverManager.getConnection(url,uname,pwd);
      }catch(Exception e){
          e.printStackTrace();
      }
      return con;
       
   }
   
   public static boolean verify(String userid,String pwd){
       
      try{
           String q= " select * from user where name=? and pass=?";
          
            ps=getConnect().prepareStatement(q);
             ps.setString(1,userid);
           ps.setString(2,pwd);
              ResultSet rs = ps.executeQuery();
           if(rs.next()){
             System.out.println("Login successful for user: " + userid);
             return true;
           }
           else{
                System.out.println("Login failed. No matching user found.");
                return false;
           }
            
            
      
      
      }catch(Exception e){
          e.printStackTrace();
      }
      return false;
   }
   
   public static List<String[]> displayAll(){
       String q="Select * from food;";
      List<String[]> list=new ArrayList<>();
      
     
      
     try{
         PreparedStatement ps= getConnect().prepareStatement(q);
        ResultSet rs= ps.executeQuery();
        while(rs.next()){
            int id= rs.getInt(1);
        String food_name=rs.getString(2);
        String  price= rs.getString(3);
        String img=rs.getString(4);
        String ids= Integer.toString(id);
        String[] food_details={ids, food_name,price,img};
        list.add(food_details);
        }
     }catch(Exception e){
         e.printStackTrace();
     }
     
     return list;
   }
   /////////////save cart user///////////
   public static int saveCart(int fid){
     int status=0;
     try{
        
         ps=con.prepareStatement("insert into cart (food_id)values(?)");
         ps.setInt(1,fid);
        
        
         
         status=ps.executeUpdate();
        
     }catch(Exception e){e.printStackTrace();}
     return status;
    }
   
     ////save for for admin
    public static int saveFood(String fname,String price ,String img){
     int status=0;
     try{
       
         ps=getConnect().prepareStatement("insert into food (food_name,price,img )values(?,?,?)");
         
         ps.setString(1,fname);
         ps.setString(2, price);
         ps.setString(3,img);
         
         status=ps.executeUpdate();
         con.close();
     }catch(Exception e){e.printStackTrace();}
     return status;
    }
    
    
    ////register user
    
      public static int saveUser(String name,String email,String pass){
     int status=0;
     try{
         
         ps=getConnect().prepareStatement("insert into user values(?,?,?)");
         ps.setString(1,name);
         ps.setString(3,email);
         ps.setString(2,pass);
         
         status=ps.executeUpdate();
         con.close();
     }catch(Exception e){e.printStackTrace();}
     return status;
    }

      
         public static List<String[]> displayCart(){
         String q= "select * from food where food_id in (select food_id from cart);";
         List<String[]> list =new ArrayList<>();
        try{
            ps=getConnect().prepareStatement(q);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                String id=rs.getString(1);
               String name=rs.getString(2);
               String price=rs.getString(3);
               String img=rs.getString(4);
               String cart_details[]={id,name,price,img};
               list.add(cart_details);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
            
        return list;
     }
       
      

   
   
}
