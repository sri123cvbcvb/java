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

import com.google.gson.Gson;

import connection.DB;

/**
 * Servlet implementation class Work_allo
 */
@WebServlet("/Work_allo")
public class Work_allo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String status1 = "Work Allocated";
		String st = null;
		try {
			Connection con = DB.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"UPDATE client SET req_status=? WHERE email='"
							+ email + "' ");

			ps.setString(1, status1);
			/*ps.setString(2, toa);
			ps.setString(3, cpn);
			ps.setString(4, addr);
			ps.setString(5, web);
			ps.setString(6, pd);
			ps.setBinaryStream(7, inputStream1,(int)filePart.getSize());*/
			/*ps.setString(7, noe);
			ps.setString(8, rev);
			ps.setString(9, web);*/
//hai
			int status = ps.executeUpdate();

			if (status > 0)

			{
   	   		 st ="sucess";
   	   		response.setContentType("application/json");
   	        response.getWriter().write(new Gson().toJson(st));
   	   		
   		}
   		else
   		{
   			st ="mismatch";
   			response.setContentType("application/json");
   	        response.getWriter().write(new Gson().toJson(st));
   		
   		}

		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
