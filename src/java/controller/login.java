package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import DAO.logindao;
import conn.Conn;
import jakarta.servlet.http.HttpSession;
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            PrintWriter out= response.getWriter();
            String uname=request.getParameter("name").trim();
            String pass=request.getParameter("pass").trim();
            
            
            boolean n= Conn.verify(uname, pass);

            
            if(n==true){
                
               request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            else{
               request.getRequestDispatcher("index.html").include(request, response);
               out.println("<h1 style='color: red;'>Please enter the correct username or password to login.</h1>");
            }
            
    }
  
}