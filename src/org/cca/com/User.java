package org.cca.com;

import java.util.Date;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Query;

public class User{
	
		private static  DatastoreService  datastore=DatastoreServiceFactory.getDatastoreService();
		public static boolean createUser(String name,String surname,String age, String email, String mobile)
		{

		   System.out.println("in  createuser");
		
		Date date = new Date();
			Entity user=new Entity("User",name);
	  	    user.setProperty("Name", name);
			user.setProperty("Surname", surname);
			user.setProperty("Age", age);
			user.setProperty("Email", email);
			user.setProperty("Date", date);
			user.setProperty("Mobile", mobile);
            System.out.println("the datastore:  "+datastore.put(user));
            System.out.println("end  createuser");
			System.out.println("the Key is "+user.getKey()+"the kind is  :"+user.getKind());
			return true;	
			   
		}
		public static Iterable<Entity> listUsers(String kind, String name) 
		{
			System.out.println("the kind is:"+kind+"name is:"+name);
		    Query  q=new  Query(kind).addSort("Name",  Query.SortDirection.ASCENDING);
		    Iterable<Entity> pq=datastore.prepare(q).asIterable(FetchOptions.Builder.withLimit(10));
		    return  pq; 
		}
		
}