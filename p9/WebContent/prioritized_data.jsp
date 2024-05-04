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
	<!-- <script src="asset8/js/wa.js"></script> -->
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
	<%
	  String email1 = null;
	String em = "hai";
	%>
	<%-- <%
	try{
	 	
		 Connection con2=DB.getConnection();  
        Statement stmt2 = con2.createStatement();  
        ResultSet rs2 = stmt2.executeQuery("select * from city_data");  
	  
	 		while(rs2.next())
	  		{
             email1 = rs2.getString("email");
             System.out.println(email1);
            /* status = rs1.getString("status"); */
            /* System.out.println(st); */ 
	  		}
    }catch(Exception e)
	    {
	    		System.out.println(e);
	    }
	
	%>
	 --%>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Air Pollution Level</h2>
					<button onclick="back()">Back</button>
					<%-- <button onclick="prioritize('<%=email1%>')">Prioritizing</button> --%>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-responsive-xl">
						  <thead>
						    <tr>
						    	
						    	<th>PRIORITY</th>
						    	<th>Latitude</th>
						      <th>Longitude</th>
						      <th>Altitude</th>
						      <th>Pollution Level</th>
						      
						    </tr>
						  </thead>
						  <%
						  String email = request.getParameter("email");
						  String profile = "profile";
						  int count = 0;
						  String status = null;
						  %>
						  
						  <%
					       try{
							 	
								 Connection con1=DB.getConnection();  
					             Statement stmt1 = con1.createStatement();  
					             ResultSet rs1 = stmt1.executeQuery("select * from city_data ORDER BY TrafficDensity DESC");  
							     /* Statement stm2 = con1.createStatement();
							     ResultSet rs2 = stm2.executeQuery("select count(*) from city_data");
							     if (rs2.next()) { // Move to the first (and only) row
							    	    count = rs2.getInt(1); // Get the count value from the first column
							    	    System.out.println("Count: " + count);
							     } */
							     int priority = 1;
							 		while(rs1.next())
							  		{
					                 
					                 /* int i;
					                 for (i = 1; i <= count; i++) {
                                    
                                      
                                     // Process the column data as needed
                                     System.out.println("count" + ": " + i);
					                 } */
							  		%>
						  
						  
						  <tbody>
						  
						    <tr class="alert" role="alert">
						    	
						     
						      <td><%=priority++ %></td>
						     
						      <td><%=rs1.getString("Latitude") %></td>
						      <td><%=rs1.getString("Longitude") %></td>
						      <td><%=rs1.getString("Altitude") %></td>
						      <td><%=rs1.getString("TrafficDensity") %></td>
						     
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
	window.location.href="airsense_home.jsp";
	
}
 function prioritize(val1){
	var email = val1;
	window.location.href="prioritized.jsp?email="+email;
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

