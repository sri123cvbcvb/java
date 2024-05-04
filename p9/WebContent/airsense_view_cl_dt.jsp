<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "connection.DB"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>Airsense view client details</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="asset8/css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Client Approval Details</h2>
					<button onclick="back()">Back</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-responsive-xl">
						  <thead>
						    <tr>
						    	<!-- <th>&nbsp;</th> -->
						    	<th>Email</th>
						      <th>Username</th>
						      <th>Authority Type</th>
						      <th>Phone Number</th>
						      <th>Project Details</th>
						      
						      <th>Status</th>
						      
						    </tr>
						  </thead>
						  <%
						  String email = request.getParameter("email");
						  String profile = "profile";
						  String email1 = null;
						  String status = null;
						  List<String> emails = new ArrayList<>();
						  %>
						  
						  <%
					       try{
							 	
								 Connection con1=DB.getConnection();  
					             Statement stmt1 = con1.createStatement();  
					             ResultSet rs1 = stmt1.executeQuery("select * from client");  
							  
							 		while (rs1.next())
							  		{
					                 
					                 status = rs1.getString("status");
					                 /* System.out.println(st); */ 
					                 email1 = rs1.getString("email");
                                     emails.add(rs1.getString("email")); 
							  		%>
						  
						  
						  <tbody>
						  
						    <tr class="alert" role="alert">
						    	
						      <td class="d-flex align-items-center">
						      <div><img style="border-radius: 100px;" data-enlargable src="viewimg.jsp?email1=<%=rs1.getString("email")%>&&profile1=<%=profile%>"" width="100" height="100" /></div> 
						      	<%-- <div class="img" style="background-image: viewimg.jsp?email1=<%=rs1.getString("email")%>&&profile1=<%=profile%>"></div> --%>
						      	<div class="pl-3 email">
						      		<span id="em"><%=rs1.getString("email") %></span>
						      		<!-- <span>Added: 01/03/2020</span> -->
						      	</div>
						      </td>
						      
						      <td><%=rs1.getString("uname") %></td>
						      <td><%=rs1.getString("toa") %></td>
						      <td><%=rs1.getString("cpn") %></td>
						      <td><%=rs1.getString("pd") %></td>
						      <%-- <td id="ss"><%=rs1.getString("status") %></td> --%>
						      <%if (status.equalsIgnoreCase("pending")) {%>
						      <td class="status" ><span id="sts" style="background-color:yellow;color:black;" >Not Yet Approved</span></td>
						      <%} %>
						      <%if (status.equalsIgnoreCase("accepted")) {%>
						      <td class="status" ><span id="sts" style="background-color:green;color:white;" >Accepted</span></td>
						      <%} %>
						      <%if (status.equalsIgnoreCase("rejected")) {%>
						      <td class="status" ><span id="sts" style="background-color:red;color:black;" >Rejected</span></td>
						      <%} %>
						      <!-- <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td> -->
						    </tr>
						    <%
							  		}
					       }catch(Exception e)
						    {
						    		System.out.println(e);
						    }
					       
					       %> 
						    
						    
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="asset8/js/jquery.min.js"></script>
  <script src="asset8/js/popper.js"></script>
  <script src="asset8/js/bootstrap.min.js"></script>
  <script src="asset8/js/main.js"></script>
<script>
<%-- var email = '<%=emails%>';
console.log(email);
console.log(sts);
var sts = '<%=status%>';
var sts1 = document.getElementById("sts");
if (sts === "pending"){
	sts1.innerHTML = "Not Yet Approved";
	sts1.style.backgroundColor = "yellow";
	sts1.style.color = "black";
}
else if (sts === "accepted"){
	sts1.innerHTML = "Accepted";
	sts1.style.backgroundColor = "green";
	sts1.style.color = "white";
	sts1.classList.add("active");
}

else if (sts === "rejected"){
	sts1.innerHTML = "Rejected";
	sts1.style.backgroundColor = "red";
	sts1.style.color = "black";
	sts1.classList.add("active");
	
} --%>
function back(){
	var email = '<%=email %>';
	window.location.href="airsense_home.jsp";
	
}

</script>
	</body>
</html>

