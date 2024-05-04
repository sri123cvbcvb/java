<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title> client registration</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="keywords" content=" volunteer enrollment form Widget a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link rel="stylesheet" href="asset7/css/style.css" type="text/css" media="all" /><!-- Style-CSS -->
<link href="//fonts.googleapis.com/css?family=Heebo:300" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Exo" rel="stylesheet">
</head>
<body>
<%
String email = request.getParameter("email");

%>
	<section class="agile-volt">
		<div class="agile-voltheader">
			<h1>Client <label>enrollment</label></h1>
		</div>
		<div class="agile-voltsub">
			<h2>Client form</h2>
				<form action="Cli_reg" method="post" enctype="multipart/form-data">
					<div class="agile-name">
						<p>Name of Authority:</p>
						<input type="text" name="noa" placeholder="enter a user name" required="" autofocus>
					</div>
					<div class="clear"></div>
					<div class="agile-country">
						<p>Type of Authority:</p>
						<select name="toa">
							<option value="">Please Select</option>
							<option value="government">Government Agency</option>
                            <option value="private">Private Company</option>
                            <option value="nonprofit">Non-Profit Organization</option>
						</select>
					</div>
					<div class="clear"></div>
					<div class="agile-email">
						<p>Contact Person Email:</p>
						<input type="email" name="email" value="<%=email %>" placeholder="email address" readonly="" required="">
					</div>
					<div class="clear"></div>
					<div class="agile-address">
						<p>Contact Phone Number:</p>
						<input type="text" name="cpn" placeholder="Phone Number" required="" >
					</div>
					<div class="clear"></div>
					<div class="agile-city">
						<p>Address:</p>
						<input type="text" name="addr" placeholder="Address" min="1" max="12"/>
					</div>
					<div class="clear"></div>
					<div class="agile-state">
						<p>Website:</p>
						<input type="text" name="web" placeholder="Website">
					</div>
					<div class="clear"></div>
					<div class="agile-state">
						<p>Project Details:</p>
						<!-- <textarea id="project_details" name="project_details" rows="5"></textarea> -->
						 <input type="text" name="pd" placeholder="Project Details"> 
					</div>
					
					<div class="agile-state">
						<p>Profile Picture:</p>
						<!-- <textarea id="project_details" name="project_details" rows="5"></textarea> -->
						<input  type="file" id="fileselect" name="file1" multiple="multiple" />
								<div id="filedrag"></div>
					</div>
					<!-- <div class="agile-pin">
						<p>pincode</p>
						<input type="tel" name="username" placeholder="pin code" />
					</div> -->
					<div class="clear"></div>
					<!-- <div class="agile-country">
						<p>country</p>
						<select>
							<option value="country">Please Select</option>
							<option value="country">country</option>
							<option value="country">country</option>
						</select>
					</div> -->
					<div class="clear"></div>
					<!-- <div class="agile-work">
						<p>how many days of the week do you work</p>
							<div class="agile-days">
								<span class="Monday">
									<input type="checkbox" name="week" value="monday">monday<br>	
								</span>
								<span class="Tuesday">
									<input type="checkbox" name="week" value="Tuesday">tuesday<br>					
								</span>
								<span class="Wednesday">
									<input type="checkbox" name="week" value="Wednesday">wednesday<br>
								</span>
								<span class="Thursday">
									<input type="checkbox" name="week" value="thursday">thursday<br>
								</span>
								<span class="Friday">
									<input type="checkbox" name="week" value="friday">friday<br>
								</span>
								<span class="Saturday">
									<input type="checkbox" name="week" value="saturday">saturday<br>
								</span>
								<span class="Sunday">
									<input type="checkbox" name="week" value="sunday">sunday<br>
								</span>
							</div>
					</div> -->
					<div class="clear"></div>
					<!-- <div class="agile-week">
						<p>how many hours do you work per day </p>
						 <div class="agile-from">
						 <p>from (morning)</p>
							<input type="number" name="time" min="1" max="12" placeholder="AM">
						 </div>
						 <div class="agile-to">
						 <p>to(Evening)</p>
							<input type="number" name="time" min="1" max="12" placeholder="PM">
						 </div>
					</div> -->
					<div class="clear"></div>
					<input type="submit" value="submit" />
				</form>
		</div>
	<!-- <div class="agile-copyright">
				<footer>&copy; 2017 volunteer enrollment form.All Rights Reserved.Designed by <a href="http://www.w3layouts.com" target="blank">w3layouts</a></footer>
			</div> -->
	</section>
</body>
</html>
