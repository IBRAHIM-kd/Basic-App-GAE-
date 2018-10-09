package org.cca.com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import  org.cca.com.User;

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {
	
	public void  doPost(HttpServletRequest request,  HttpServletResponse  response) throws ServletException, IOException{
        RequestDispatcher  dispatcher;
        boolean flag;
                  String name=request.getParameter("ename");
                  String surname=request.getParameter("surname");
                  String age=request.getParameter("age");
                  String email=request.getParameter("email");
                  String mobile=request.getParameter("mobile");
                  System.out.println("name: "+name+"surname:  "+surname+"age:  "+age+"email:  "+email+"mobile: "+mobile);
                  //create user
                  flag=User.createUser(name,surname, age, email, mobile);
                  System.out.println("the flag value is:"+flag);
                 if(flag)
                 {

                       System.out.println("success");
                       dispatcher=getServletContext().getRequestDispatcher( "/welcome.jsp" );
                  dispatcher.forward(request, response);
                 }
                 else
                 {
                       System.out.println("failed");
                           dispatcher=getServletContext().getRequestDispatcher( "/register.jsp" );
                  dispatcher.forward(request, response);
                  }

   
	}	

}
	
