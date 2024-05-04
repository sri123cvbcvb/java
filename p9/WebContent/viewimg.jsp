<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "connection.DB"%>
<%@ page trimDirectiveWhitespaces="true" %>

<% 

Blob image = null;

Connection con = null;

byte[ ] imgData = null ;

Statement stmt = null;

ResultSet rs = null;
String email=request.getParameter("email1");
String type=request.getParameter("profile1");
%>

<%

try {

	con=DB.getConnection();

stmt = con.createStatement();

rs = stmt.executeQuery("select photo from client where email = '"+email+"'");

if (rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} else {

out.println("Display Blob Example");

out.println("image not found for given image");

return;

}

// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

}

finally {

try {

rs.close();

stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 

<%-- <%
if(type.equalsIgnoreCase("research")){
try {

	con=DB.getConnection();

stmt = con.createStatement();

rs = stmt.executeQuery("select file from res_register where id = '"+id+"' ");

if (rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} else {

out.println("Display Blob Example");

out.println("image not found for given image");

return;

}

// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

}

finally {

try {

rs.close();

stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}
}
%>

<%
if(type.equalsIgnoreCase("analyst")){
try {

	con=DB.getConnection();

stmt = con.createStatement();

rs = stmt.executeQuery("select file from ana_register where id = '"+id+"' ");

if (rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} else {

out.println("Display Blob Example");

out.println("image not found for given image");

return;

}

// display the image

response.setContentType("image/gif");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

}

finally {

try {

rs.close();

stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}
}
%> --%>