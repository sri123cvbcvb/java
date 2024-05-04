package res;

import java.io.IOException;

import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import connection.DB;

/**
 * Servlet implementation class CL_uploaddata
 */
@WebServlet("/Data_up")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
maxFileSize = 10737418240L,     // 10 GB
maxRequestSize = 10737418240L   // 100 gb
)
public class Data_up extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String role = request.getParameter("role");
		String email = request.getParameter("email");
		/*String i=request.getParameter("id");
    	String cn1=request.getParameter("cn");
    	String st ="pending";
    	System.out.println(fn+i+cn1);*/
	//	Random r = new Random();
//		int id = r.nextInt(100);
		String qry= null;
		String csvFilePath = null;
		String table = null;
		if(role.equalsIgnoreCase("cli")){
		String csv = "E:/p9_ws(23-24)/p9";
		csvFilePath = csv+"//WebContent//dataset//city_data.csv";
		table = "city_data";
		}
		else if(role.equalsIgnoreCase("Material Classification")){
			String csv = "E:/p8_ws(23-24)/P8";
			csvFilePath = csv+"//WebContent//dataset//material_data.csv";
			table = "mc_data";
			}
		else if(role.equalsIgnoreCase("Material Testing")){
			String csv = "E:/p8_ws(23-24)/P8";
			csvFilePath = csv+"//WebContent//dataset//org_requirements.csv";
			table = "mt_data";
			}
		else{
			System.out.println("no parameter passed for role");
		}
    	/*String csv1 = "E:/p5_ws(23-24)/P5";
    	String csvFilePath1 = csv1+"//WebContent//dataset//plan_details.csv";*/
    	
    	
    	/*  	String csv2 = "C:/ram/project3";
   	        String csvFilePath2 = csv2+"//WebContent//dataset1//dataset2.0.csv";
         	String csv3 = "C:/ram/project3";
         	String csvFilePath3 = csv3+"//WebContent//dataset2//dataset3.csv";
    	//String csvFilePath1 = csv+"//CrowdSourcing//Dataset//desg.csv";
    	 //   String fname = request.getParameter("traindata");
    	 //   System.out.println(fname);*/
    	
    	    try {
    	    	/*if(type.equalsIgnoreCase("Exercise_Data")){*/
    	    qry =  "LOAD DATA INFILE '"+csvFilePath+"'" +
    	    	       "INTO TABLE "+table+" FIELDS TERMINATED BY ','" +
    	    	       "OPTIONALLY ENCLOSED by '\"'" +"IGNORE 1 LINES" ;	
    	    
    	   
    	    	/*}*/
    	    	/*else if (type.equalsIgnoreCase("Plan_Data")){
    	    	 qry =  "LOAD DATA INFILE '"+csvFilePath1+"'" +
    	    	    	       "INTO TABLE plan_details FIELDS TERMINATED BY ','" +
    	    	    	       "OPTIONALLY ENCLOSED by '\"'" +"IGNORE 1 LINES" ;
    	    	}*/
    	    
    	    Connection con=DB.getConnection();
    	    int ps=con.prepareStatement(qry).executeUpdate();
    	    if(role.equalsIgnoreCase("cli")){
    	    String qry1 = "update city_data set email='"+email+"'";
      	   int ps1=con.prepareStatement(qry1).executeUpdate();
    	    }
    	  /* String qry2 = "insert into product_det1 (pname,pcat,pqua,pimg,ppri) select pname,pcat,pqua,pimg,ppri from product_det";
    	   int ps2 = con.prepareStatement(qry2).executeUpdate();*/
    	    /*if(type.equalsIgnoreCase("Plan_Data")){
    	   String qry1 = "update client set st='"+"pending"+"'";
    	   int ps1=con.prepareStatement(qry1).executeUpdate();
    	    }*/
    	   
    	//   String qry1 = "LOAD DATA INFILE '"+csvFilePath1+"'" +
//    	       "INTO TABLE feedback1 FIELDS TERMINATED BY ','" +
//    	       "OPTIONALLY ENCLOSED by '\"'";
    	 //   int i1 = DB.getConnection().prepareStatement(qry1).executeUpdate();
    	   
    	   

    		 if (ps > 0) {
    			 String redirectURL = null;
    			 if(role.equalsIgnoreCase("cli")){
    			     redirectURL = "client_home.jsp?email="+email;
    			 }
    			 else if(role.equalsIgnoreCase("Material Classification")){
    				 redirectURL = "mc_home.jsp";	 
    			 }
    			 else if(role.equalsIgnoreCase("Material Testing")){
    				 redirectURL = "mt_home.jsp";	 
    			 }
 				 out.println("<script>");
 		         out.println("alert('Data upload successfully');");
 		         out.println("window.location.href = '" + redirectURL + "';"); 
 		         out.println("</script>");
    	    	
    				/*out.print("<html><body><script>alert(' Data uploaded successfully')</script></body></html>");
    				request.getRequestDispatcher("dp_upload.html").include(request, response);*/
    			}
    			else {
    				out.print("<html><body><script>alert('sorry')</script></body></html>");
    	   }
    	}catch(Exception e) {
    		 e.printStackTrace();
    	}
   } 
    	
 /*   	
   if(fn.equals("Rolls_Royce")) {
	  
	   try {
   	    String qry =  "LOAD DATA INFILE '"+csvFilePath2+"'" +
   	    	       "INTO TABLE dataset3 FIELDS TERMINATED BY ','" +
   	    	       "OPTIONALLY ENCLOSED by '\"'" +"IGNORE 1 LINES";
   	    Connection con=DB.getConnection();
   	    int ps=con.prepareStatement(qry).executeUpdate();
   	    String qry2 = "insert into dataset4 select * from dataset3  ";
   	    int ps1 = con.prepareStatement(qry2).executeUpdate();
   	    String qry1 = "update dataset4 set car_model = AES_ENCRYPT(car_model, 'fkey'), cyl = AES_ENCRYPT(cyl, 'fkey'), dis = AES_ENCRYPT(dis, 'fkey'), hp = AES_ENCRYPT(hp, 'fkey'), weg = AES_ENCRYPT(weg, 'fkey'), acc = AES_ENCRYPT(acc, 'fkey'), col = AES_ENCRYPT(col, 'fkey'), ws = AES_ENCRYPT(ws, 'fkey'),seats = AES_ENCRYPT(seats, 'fkey')";
   	    int ps2=con.prepareStatement(qry1).executeUpdate();
   	//   String qry1 = "LOAD DATA INFILE '"+csvFilePath1+"'" +
//   	       "INTO TABLE feedback1 FIELDS TERMINATED BY ','" +
//   	       "OPTIONALLY ENCLOSED by '\"'";
   	 //   int i1 = DB.getConnection().prepareStatement(qry1).executeUpdate();
   	   
   	   

   		 if (ps > 0 && ps1>0 && ps2 >0) {

   	    	
   				out.print("<html><body><script>alert(' Data uploaded successfully')</script></body></html>");
   				request.getRequestDispatcher("client_homepage_index.html").include(request, response);
   			}
   			else {
   				out.print("<html><body><script>alert('sorry')</script></body></html>");
   	   }
   	}catch(Exception e) {
   		 e.printStackTrace();
   	}
  }
   
   if(fn.equals("Alliance_Air")) {
		  
	   try {
   	    String qry =  "LOAD DATA INFILE '"+csvFilePath3+"'" +
   	    	       "INTO TABLE dataset5 FIELDS TERMINATED BY ','" +
   	    	       "OPTIONALLY ENCLOSED by '\"'" +"IGNORE 1 LINES";
   	    Connection con=DB.getConnection();
   	    int ps=con.prepareStatement(qry).executeUpdate();
   	    String qry2 = "insert into dataset6 select * from dataset5  ";
   	    int ps1 = con.prepareStatement(qry2).executeUpdate();
   	    String qry1 = "update dataset6 set at = AES_ENCRYPT(at, 'fkey'), noa = AES_ENCRYPT(noa, 'fkey'), isoc = AES_ENCRYPT(isoc, 'fkey'), isor = AES_ENCRYPT(isor, 'fkey'), mun = AES_ENCRYPT(mun, 'fkey'), gps = AES_ENCRYPT(gps, 'fkey'), co = AES_ENCRYPT(co, 'fkey'), bp = AES_ENCRYPT(bp, 'fkey'),dt = AES_ENCRYPT(dt, 'fkey'),ll = AES_ENCRYPT(ll, 'fkey'),cl = AES_ENCRYPT(cl, 'fkey') ";
   	    int ps2=con.prepareStatement(qry1).executeUpdate();
   	//   String qry1 = "LOAD DATA INFILE '"+csvFilePath1+"'" +
//   	       "INTO TABLE feedback1 FIELDS TERMINATED BY ','" +
//   	       "OPTIONALLY ENCLOSED by '\"'";
   	 //   int i1 = DB.getConnection().prepareStatement(qry1).executeUpdate();
   	   
   	   

   		 if (ps > 0 && ps1>0 && ps2 >0) {

   	    	
   				out.print("<html><body><script>alert(' Data uploaded successfully')</script></body></html>");
   				request.getRequestDispatcher("client_homepage_index.html").include(request, response);
   			}
   			else {
   				out.print("<html><body><script>alert('sorry')</script></body></html>");
   	   }
   	}catch(Exception e) {
   		 e.printStackTrace();
   	}
  }*/
    			
    	}
    	