package com.pymtapp.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.pymtapp.db.DbConnection;
import com.pymtapp.dto.UserDto;


@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public registerServlet() {
        super();
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
    	String username=(String)request.getParameter("username");
    	String firstname=(String)request.getParameter("firstname");
    	String lastname=(String)request.getParameter("lastname");
    	String password=(String)request.getParameter("password");
    	String email=(String)request.getParameter("email");
    	String phonenumber=(String)request.getParameter("phonenumber");
    	String address=(String)request.getParameter("address");
    	PrintWriter pw=response.getWriter();
    	response.setContentType("text/html");
    	UserDto user=new UserDto(username,firstname,lastname,password,email,phonenumber,address);  	
    	
    	try {
			Connection con=DbConnection.getConnection();
			String insertQuery="insert into User_details(user_name , password ,first_name  ,last_name ,phone_number ,email,address) values(?,?,?,?,?,?,?);";
			PreparedStatement ps= con.prepareStatement(insertQuery);
			
			
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3,firstname);
			ps.setString(4,lastname);
			ps.setString(5,phonenumber);
			ps.setString(6,email);
			ps.setString(7, address);
			
			int res=ps.executeUpdate();
		   
		    
		    if(res>0) {
		    	pw.print("<script type='text/javascript'> alert('Registered Successfully'); </script>");
		    	RequestDispatcher rd= request.getRequestDispatcher("index.html");
		    	rd.include(request, response);
		    }
		    else {
		    	pw.print("<script type='text/javascript'> alert('Registration Failed!'); </script>");
		    	RequestDispatcher rd= request.getRequestDispatcher("register.html");
		    	rd.include(request, response);
		    }
		
						
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
    
   

}
