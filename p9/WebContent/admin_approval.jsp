<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import = "connection.DB"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>Table 05</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="asset8/css/style.css">
<style>
.button-121{
/* display:flex;
flex-direction: column; */
align-items: center;
padding: 6px 14px;
font-family: -apple-system, BlinkMacSystemFont, 'Roboto', sans-serif;
border-radius: 6px;
border: none;
background: #6E6D70;
box-shadow: 0px 0.5px 1px rgba(0, 0, 0, 0.1), inset 0px 0.5px 0.5px rgba(255, 255, 255, 0.5), 0px 0px 0px 0.5px rgba(0, 0, 0, 0.12);
color: #DFDEDF;
user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}
.button-121:focus {
  box-shadow: inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2), 0px 0.5px 1px rgba(0, 0, 0, 0.1), 0px 0px 0px 3.5px rgba(58, 108, 217, 0.5);
  outline: 0;
}
.button-121:hover{
background: green;
color: white;
}
.button-122{
/* display:flex;
flex-direction: column; */
align-items: center;
padding: 6px 14px;
font-family: -apple-system, BlinkMacSystemFont, 'Roboto', sans-serif;
border-radius: 6px;
border: none;
background: #6E6D70;
box-shadow: 0px 0.5px 1px rgba(0, 0, 0, 0.1), inset 0px 0.5px 0.5px rgba(255, 255, 255, 0.5), 0px 0px 0px 0.5px rgba(0, 0, 0, 0.12);
color: #DFDEDF;
user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}
.button-122:focus {
  box-shadow: inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2), 0px 0.5px 1px rgba(0, 0, 0, 0.1), 0px 0px 0px 3.5px rgba(58, 108, 217, 0.5);
  outline: 0;
}
.button-122:hover{
background: red;
color: white;
}


</style>
	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Client Approval Process</h2>
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
						      <th>UserName</th>
						      <th>Authority Type</th>
						      <th>Phone Number</th>
						      <th>Project Details</th>
						      
						      <th>Action</th>
						      <th>Action</th>
						      
						    </tr>
						  </thead>
						  <%
						  String email = request.getParameter("email");
						  String profile = "profile";
						  String email1 = null;
						  String status = null;
						  %>
						  
						  <%
					       try{
							 	
								 Connection con1=DB.getConnection();  
					             Statement stmt1 = con1.createStatement();  
					             ResultSet rs1 = stmt1.executeQuery("select * from client");  
							  
							 		while(rs1.next())
							  		{
					                  email1 = rs1.getString("email"); 
					                 status = rs1.getString("status");
					                 
					                 /* System.out.println(st); */ 
							  		%>
						  
						  
						  <tbody>
						  
						    <tr class="alert" role="alert">
						    	
						      <td class="d-flex align-items-center">
						      <div><img style="border-radius: 100px;" data-enlargable src="viewimg.jsp?email1=<%=rs1.getString("email")%>&&profile1=<%=profile%>"" width="100" height="100" /></div> 
						      	<%-- <div class="img" style="background-image: viewimg.jsp?email1=<%=rs1.getString("email")%>&&profile1=<%=profile%>"></div> --%>
						      	<div class="pl-3 email">
						      		<span><%=rs1.getString("email") %></span>
						      		<!-- <span>Added: 01/03/2020</span> -->
						      	</div>
						      </td>
						      
						      <td><%=rs1.getString("uname") %></td>
						      <td><%=rs1.getString("toa") %></td>
						      <td><%=rs1.getString("cpn") %></td>
						      <td><%=rs1.getString("pd") %></td>
						      <td><button class="button-121" onclick="acc1('<%=email1 %>', 'acc')">Accept</button></td>
						      <td><button class="button-122" onclick="acc1('<%=email1 %>', 'reg')">Reject</button></td>
						     <!--  <td class="status" ><span id="sts" style="background-color:red;" >Active</span></td> -->
						      
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
<%-- var sts = '<%=status%>';
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
	window.location.href="admin_home.jsp";
	
}
function acc1(val1, val2){
	console.log("acc");
	var email = val1;
	var approval = val2;
	if(approval === "acc"){
		console.log("acc");
	window.location.replace("Ad_approval?email="+email+"&&approval="+approval);
	}
	else if(approval === "reg"){
		window.location.replace("Ad_approval1?email="+email+"&&approval="+approval);
	}
	
}
</script>
	</body>
</html>

