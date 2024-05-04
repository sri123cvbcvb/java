package res;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import connection.DB;

/**
 * Servlet implementation class Cl_reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
      /*  String type = request.getParameter("type");*/
		String username = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String confirmPassword = request.getParameter("cpass");
		/*String st = "pending";
		String req_st = "pending";*/
		/*String dv_pass = "pending";*/
		String role = request.getParameter("role");
		System.out.println("reg:"+ role);
		
     System.out.println(username+email+password+confirmPassword);
     
     
     if(role.equalsIgnoreCase("cli")){
    try {
		Connection con = DB.getConnection();
  	    PreparedStatement ps = con.prepareStatement("insert into client(uname,email,pass,cpass) values(?,?,?,?)");
          
  	    ps.setString(1, username);
  	    ps.setString(2, email);
  	    ps.setString(3, password);
  	    ps.setString(4, confirmPassword);
  	    
  	   
  	
  	     System.out.println(username+email+password+confirmPassword);

		int status = ps.executeUpdate();
	     System.out.println(username+email+password+confirmPassword);

		if(status>0)
			
		{
			/*JSONObject jsonResponse = new JSONObject();
	        jsonResponse.put("message", "Registration successfull!");

	        // Send JSON response to the client
	        response.setContentType("application/json");
	        PrintWriter out = response.getWriter();
	        out.print(jsonResponse.toString());
	        out.flush();*/
			
	        String redirectURL = "index.jsp?email="+email+"&&role="+role ;
			out.println("<script>");
	        out.println("alert('Client Register Successfully');");
	        out.println("window.location.href = '" + redirectURL + "';"); 
	        out.println("</script>");
		}
		else
		{
			/*JSONObject jsonResponse = new JSONObject();
            jsonResponse.put("message", "Registration Unsuccessfull!");

            // Send JSON response to the client
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(jsonResponse.toString());
            out.flush();*/
            String redirectURL = "index.jsp" ;
			out.println("<script>");
	        out.println("alert('Client Register UnSuccessfull');");
	        out.println("window.location.href = '" + redirectURL + "';"); 
	        out.println("</script>");
		}


    	
    }catch(Exception e)
    {
    	System.out.println(e);
    }
     }
    
     /*if(role.equalsIgnoreCase("vol")){
    	    try {
    			Connection con = DB.getConnection();
    	  	    PreparedStatement ps = con.prepareStatement("insert into volunteer(uname,email,pass,cpass) values(?,?,?,?)");
    	          
    	  	    ps.setString(1, username);
    	  	    ps.setString(2, email);
    	  	    ps.setString(3, password);
    	  	    ps.setString(4, confirmPassword);
    	  	    
    	  	   
    	  	
    	  	     System.out.println(username+email+password+confirmPassword);

    			int status = ps.executeUpdate();
    		     System.out.println(username+email+password+confirmPassword);

    			if(status>0)
    				
    			{
    				JSONObject jsonResponse = new JSONObject();
    		        jsonResponse.put("message", "Registration successfull!");

    		        // Send JSON response to the client
    		        response.setContentType("application/json");
    		        PrintWriter out = response.getWriter();
    		        out.print(jsonResponse.toString());
    		        out.flush();
    				
    		        String redirectURL = "index.jsp?email="+email+"&&role="+role ;
    				out.println("<script>");
    		        out.println("alert('Volunteer Register Successfully');");
    		        out.println("window.location.href = '" + redirectURL + "';"); 
    		        out.println("</script>");
    			}
    			else
    			{
    				JSONObject jsonResponse = new JSONObject();
    	            jsonResponse.put("message", "Registration Unsuccessfull!");

    	            // Send JSON response to the client
    	            response.setContentType("application/json");
    	            PrintWriter out = response.getWriter();
    	            out.print(jsonResponse.toString());
    	            out.flush();
    	            String redirectURL = "index.jsp" ;
    				out.println("<script>");
    		        out.println("alert('Volunteer Register UnSuccessfull');");
    		        out.println("window.location.href = '" + redirectURL + "';"); 
    		        out.println("</script>");
    			}


    	    	
    	    }catch(Exception e)
    	    {
    	    	System.out.println(e);
    	    }
    	     } */
     
     /*if(role.equalsIgnoreCase("cp")){
    	    try {
    			Connection con = DB.getConnection();
    	  	    PreparedStatement ps = con.prepareStatement("insert into conservation(uname,email,pass,cpass) values(?,?,?,?)");
    	          
    	  	    ps.setString(1, username);
    	  	    ps.setString(2, email);
    	  	    ps.setString(3, password);
    	  	    ps.setString(4, confirmPassword);
    	  	    
    	  	   
    	  	
    	  	     System.out.println(username+email+password+confirmPassword);

    			int status = ps.executeUpdate();
    		     System.out.println(username+email+password+confirmPassword);

    			if(status>0)
    				
    			{
    				JSONObject jsonResponse = new JSONObject();
    		        jsonResponse.put("message", "Registration successfull!");

    		        // Send JSON response to the client
    		        response.setContentType("application/json");
    		        PrintWriter out = response.getWriter();
    		        out.print(jsonResponse.toString());
    		        out.flush();
    				
    		        String redirectURL = "index.jsp?email="+email+"&&role="+role ;
    				out.println("<script>");
    		        out.println("alert('Register Successfully');");
    		        out.println("window.location.href = '" + redirectURL + "';"); 
    		        out.println("</script>");
    			}
    			else
    			{
    				JSONObject jsonResponse = new JSONObject();
    	            jsonResponse.put("message", "Registration Unsuccessfull!");

    	            // Send JSON response to the client
    	            response.setContentType("application/json");
    	            PrintWriter out = response.getWriter();
    	            out.print(jsonResponse.toString());
    	            out.flush();
    	            String redirectURL = "index.jsp" ;
    				out.println("<script>");
    		        out.println("alert('Register UnSuccessfull');");
    		        out.println("window.location.href = '" + redirectURL + "';"); 
    		        out.println("</script>");
    			}


    	    	
    	    }catch(Exception e)
    	    {
    	    	System.out.println(e);
    	    }
    	     }*/
     
    
	}

}
