package org.cca.com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Entity;

@SuppressWarnings("serial")
public class ShowUsers extends HttpServlet {
	
	public void  doPost(HttpServletRequest   req,  HttpServletResponse  res) throws ServletException, IOException{
	    
        RequestDispatcher dispatcher;
        String  surname=req.getParameter("surname");
        System.out.println("the name  is:  "+surname);
        Iterable<Entity> e=User.listUsers("User",surname);
        req.setAttribute("entity", e);
        for(Entity  e1:e)
        {
           System.out.println(e1.getProperty("Name"));
        }
        dispatcher=getServletContext().getRequestDispatcher( "/showuser.jsp" );
       dispatcher.forward(req, res);
}

}
	
	
