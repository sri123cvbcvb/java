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

import connection.DB;

/**
 * Servlet implementation class Add_det
 */
@WebServlet("/Ad_approval1")
public class Ad_approval1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		// TODO Auto-generated method stub
				/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				String email = request.getParameter("email");
				String app = request.getParameter("approval");
			/*	String pn = request.getParameter("pn");
				String email = request.getParameter("email");
				String yoo = request.getParameter("yoo");
				String tell = request.getParameter("tell");*/
				/*String ta = request.getParameter("ta");
				String mc = request.getParameter("mc");*/
				String st ="rejected";
		        System.out.println("111111"+ email);
		    /*    String file = request.getParameter("file");
				
			   String fullPath = "	profile/" + file;*/
		        /*InputStream inputStream = null; 

				//String message = null;
				Part filePart = request.getPart("file");
				if (filePart != null) {
				    System.out.println(filePart.getName());
				    System.out.println(filePart.getSize());
				  //  System.out.println(filePart.getContentType());

				    inputStream = filePart.getInputStream();
				    System.out.println(inputStream); 
				System.out.println("user email:"+email);
				 String us_type = null; 
				}*/
		    
		    try {
				Connection con = DB.getConnection();
		  	    PreparedStatement ps = con.prepareStatement("UPDATE client SET status=? WHERE email='"+email+"' ");
		          
		  	    
		  	    ps.setString(1, st);
		  	   /* ps.setString(2, add1);
		  	    ps.setString(3, pn);
		     	ps.setString(4, yoo);
		    	ps.setString(5, tell);*/
		    	
		    	
				int status = ps.executeUpdate();
			    
				if(status>0)
					
				{
					String redirectURL = "admin_home.jsp";
					out.println("<script>");
			        out.println("alert('Client Rejected');");
			        out.println("window.location.href = '" + redirectURL + "';"); 
			        out.println("</script>");
					
				}
				else
				{
					
					String redirectURL = "user_details.jsp?email=" + email;
					out.println("<script>");
			        out.println("alert('Unsucessfully');");
			        out.println("window.location.href = '" + redirectURL + "';"); 
			        out.println("</script>");
			       
				}


		    	
		    }catch(Exception e)
		    {
		    	System.out.println(e);
		    }
		     }
			

		}
