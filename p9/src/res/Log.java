package res;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DB;

/**
 * Servlet implementation class Us_log
 */
@WebServlet("/Log")
public class Log extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		    String email = request.getParameter("lemail");
	        String pass = request.getParameter("lpass");
	        String role = request.getParameter("role");
	        System.out.println(email+pass+role);
	        if(role.equalsIgnoreCase("cli")){
	        try {
	            Connection con = DB.getConnection();
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM client WHERE email=? AND pass=?");
	            ps.setString(1, email);
	            ps.setString(2, pass);
	            ResultSet rs = ps.executeQuery();
	            System.out.println("11111111111");
	            if (rs.next()) {
	            	 /*System.out.println("2222222222222");
	                // If user exists in the database
	                String userType = rs.getString("type");
	                System.out.println("33333333333333");
	                ClientResponse responseObj = new ClientResponse("success", userType);
	                sendJsonResponse(response, responseObj);*/
	            	String redirectURL = "client_home.jsp?email="+email ;
	    			out.println("<script>");
	    	        out.println("alert('Client Login Successfully');");
	    	        out.println("window.location.href = '" + redirectURL + "';"); 
	    	        out.println("</script>");
	            } else {
	                // If user does not exist in the database
	                /*ClientResponse responseObj = new ClientResponse("mismatch", "User not found");
	                sendJsonResponse(response, responseObj);*/
	            	String redirectURL = "index.jsp?email="+email ;
	    			out.println("<script>");
	    	        out.println("alert('Client Login UnSuccessfully');");
	    	        out.println("window.location.href = '" + redirectURL + "';"); 
	    	        out.println("</script>");
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Handle the exception appropriately
	        }
	        } 
	        else if(role.equalsIgnoreCase("ad")){
	       	 try {
	       		   String ad_email = "admin@gmail.com";
	       		   String ad_pass = "admin@123";
	       			/*Connection con = DB.getConnection();
	       	  	    PreparedStatement ps = con.prepareStatement("insert into user(uname,email,pass,cpass) values(?,?,?,?)");
	       	          
	       	  	    ps.setString(1, username);
	       	  	    ps.setString(2, email);
	       	  	    ps.setString(3, password);
	       	  	    ps.setString(4, confirmPassword);
	       	  	     System.out.println(username+email+password+confirmPassword);

	       			int status = ps.executeUpdate();
	       		     System.out.println(username+email+password+confirmPassword);
	   */
	       			if(email.equalsIgnoreCase(ad_email) && pass.equalsIgnoreCase(ad_pass))
	       				
	       			{
	       				System.out.println("4234");
	       				/*JSONObject jsonResponse = new JSONObject();
	       		        jsonResponse.put("message", "Registration successfull!");

	       		        // Send JSON response to the client
	       		        response.setContentType("application/json");
	       		        PrintWriter out = response.getWriter();
	       		        out.print(jsonResponse.toString());
	       		        out.flush();*/
	       				
	       		        String redirectURL = "admin_home.jsp?email="+email ;
	       				out.println("<script>");
	       		        out.println("alert('Admin Login Successfully');");
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
	       		        out.println("alert('Login UnSuccessfull');");
	       		        out.println("window.location.href = '" + redirectURL + "';"); 
	       		        out.println("</script>");
	       			}


	       	    	
	       	    }catch(Exception e)
	       	    {
	       	    	System.out.println(e);
	       	    }
	        } 
	        else if(role.equalsIgnoreCase("air")){
	        	try {
		       		   String ad_email = "airsense@gmail.com";
		       		   String ad_pass = "airsense@123";
		       			/*Connection con = DB.getConnection();
		       	  	    PreparedStatement ps = con.prepareStatement("insert into user(uname,email,pass,cpass) values(?,?,?,?)");
		       	          
		       	  	    ps.setString(1, username);
		       	  	    ps.setString(2, email);
		       	  	    ps.setString(3, password);
		       	  	    ps.setString(4, confirmPassword);
		       	  	     System.out.println(username+email+password+confirmPassword);

		       			int status = ps.executeUpdate();
		       		     System.out.println(username+email+password+confirmPassword);
		   */
		       			if(email.equalsIgnoreCase(ad_email) && pass.equalsIgnoreCase(ad_pass))
		       				
		       			{
		       				System.out.println("4234");
		       				/*JSONObject jsonResponse = new JSONObject();
		       		        jsonResponse.put("message", "Registration successfull!");

		       		        // Send JSON response to the client
		       		        response.setContentType("application/json");
		       		        PrintWriter out = response.getWriter();
		       		        out.print(jsonResponse.toString());
		       		        out.flush();*/
		       				
		       		        String redirectURL = "airsense_home.jsp?email="+email ;
		       				out.println("<script>");
		       		        out.println("alert('Airsense Login Successfully');");
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
		       		        out.println("alert('Login UnSuccessfull');");
		       		        out.println("window.location.href = '" + redirectURL + "';"); 
		       		        out.println("</script>");
		       			}


		       	    	
		       	    }catch(Exception e)
		       	    {
		       	    	System.out.println(e);
		       	    }
	        }
	        else if(role.equalsIgnoreCase("pure")){
	        	try {
		       		   String ad_email = "purelon@gmail.com";
		       		   String ad_pass = "purelon@123";
		       			/*Connection con = DB.getConnection();
		       	  	    PreparedStatement ps = con.prepareStatement("insert into user(uname,email,pass,cpass) values(?,?,?,?)");
		       	          
		       	  	    ps.setString(1, username);
		       	  	    ps.setString(2, email);
		       	  	    ps.setString(3, password);
		       	  	    ps.setString(4, confirmPassword);
		       	  	     System.out.println(username+email+password+confirmPassword);

		       			int status = ps.executeUpdate();
		       		     System.out.println(username+email+password+confirmPassword);
		   */
		       			if(email.equalsIgnoreCase(ad_email) && pass.equalsIgnoreCase(ad_pass))
		       				
		       			{
		       				System.out.println("4234");
		       				/*JSONObject jsonResponse = new JSONObject();
		       		        jsonResponse.put("message", "Registration successfull!");

		       		        // Send JSON response to the client
		       		        response.setContentType("application/json");
		       		        PrintWriter out = response.getWriter();
		       		        out.print(jsonResponse.toString());
		       		        out.flush();*/
		       				
		       		        String redirectURL = "purelon_home.jsp?email="+email ;
		       				out.println("<script>");
		       		        out.println("alert('Purelon Login Successfully');");
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
		       		        out.println("alert('Login UnSuccessfull');");
		       		        out.println("window.location.href = '" + redirectURL + "';"); 
		       		        out.println("</script>");
		       			}


		       	    	
		       	    }catch(Exception e)
		       	    {
		       	    	System.out.println(e);
		       	    }
	        }
	        else if(role.equalsIgnoreCase("tower")){
	        	try {
		       		   String ad_email = "towercraft@gmail.com";
		       		   String ad_pass = "towercraft@123";
		       			/*Connection con = DB.getConnection();
		       	  	    PreparedStatement ps = con.prepareStatement("insert into user(uname,email,pass,cpass) values(?,?,?,?)");
		       	          
		       	  	    ps.setString(1, username);
		       	  	    ps.setString(2, email);
		       	  	    ps.setString(3, password);
		       	  	    ps.setString(4, confirmPassword);
		       	  	     System.out.println(username+email+password+confirmPassword);

		       			int status = ps.executeUpdate();
		       		     System.out.println(username+email+password+confirmPassword);
		   */
		       			if(email.equalsIgnoreCase(ad_email) && pass.equalsIgnoreCase(ad_pass))
		       				
		       			{
		       				System.out.println("4234");
		       				/*JSONObject jsonResponse = new JSONObject();
		       		        jsonResponse.put("message", "Registration successfull!");

		       		        // Send JSON response to the client
		       		        response.setContentType("application/json");
		       		        PrintWriter out = response.getWriter();
		       		        out.print(jsonResponse.toString());
		       		        out.flush();*/
		       				
		       		        String redirectURL = "towercarft_home.jsp?email="+email ;
		       				out.println("<script>");
		       		        out.println("alert('Towercraft Login Successfully');");
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
		       		        out.println("alert('Login UnSuccessfull');");
		       		        out.println("window.location.href = '" + redirectURL + "';"); 
		       		        out.println("</script>");
		       			}


		       	    	
		       	    }catch(Exception e)
		       	    {
		       	    	System.out.println(e);
		       	    }
	        }
	        
	    }

}
