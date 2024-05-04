package res;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import connection.DB;

/**
 * Servlet implementation class Ind_dt
 */
@WebServlet("/Cli_reg")
@MultipartConfig(maxFileSize = 16177215)
public class Cli_reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		/*String email = request.getParameter("email");*/
		String noa = request.getParameter("noa");
		String toa = request.getParameter("toa");
		String email = request.getParameter("email");
		String cpn = request.getParameter("cpn");
		String addr = request.getParameter("addr");
		String web = request.getParameter("web");
		String pd = request.getParameter("pd");
		/*String rev = request.getParameter("rev");
		String web = request.getParameter("web");*/
		InputStream inputStream1 = null;
		Part filePart = request.getPart("file1");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
          //  System.out.println(filePart.getContentType());

            inputStream1 = filePart.getInputStream();
            System.out.println(inputStream1);
        }
     System.out.println(noa+addr);
		try {
			Connection con = DB.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"UPDATE client SET noa=?, toa=?, cpn=?, addr=?, web=?, pd=?, photo=? WHERE email='"
							+ email + "' ");

			ps.setString(1, noa);
			ps.setString(2, toa);
			ps.setString(3, cpn);
			ps.setString(4, addr);
			ps.setString(5, web);
			ps.setString(6, pd);
			ps.setBinaryStream(7, inputStream1,(int)filePart.getSize());
			/*ps.setString(7, noe);
			ps.setString(8, rev);
			ps.setString(9, web);*/

			int status = ps.executeUpdate();

			if (status > 0)

			{
				String redirectURL = "client_home.jsp?email="+email;
				out.println("<script>");
				out.println("alert('Client Details Updated Sucessfully');");
				out.println("window.location.href = '" + redirectURL + "';");
				out.println("</script>");

			} else {

				String redirectURL = "ind_det_up.jsp";
				out.println("<script>");
				out.println("alert('Unsucessfully');");
				out.println("window.location.href = '" + redirectURL + "';");
				out.println("</script>");

			}

		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
