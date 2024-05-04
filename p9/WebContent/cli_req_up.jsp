<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:700,300);
.frame {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  height: 400px;
  margin-top: -200px;
  margin-left: -200px;
  border-radius: 2px;
  box-shadow: 4px 8px 16px 0 rgba(0, 0, 0, 0.1);
  overflow: hidden;
  background: linear-gradient(to top right, darkmagenta 0%, hotpink 100%);
  color: #333;
  font-family: "Open Sans", Helvetica, sans-serif;
}

.center {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 300px;
  height: 260px;
  border-radius: 3px;
  box-shadow: 8px 10px 15px 0 rgba(0, 0, 0, 0.2);
  background: #fff;
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  flex-direction: column;
}

.title {
  width: 100%;
  height: 50px;
  border-bottom: 1px solid #999;
  text-align: center;
}

h1 {
  font-size: 16px;
  font-weight: 300;
  color: #666;
}

.dropzone {
  width: 100px;
  height: 80px;
  border: 1px dashed #999;
  border-radius: 3px;
  text-align: center;
}

.upload-icon {
  margin: 25px 2px 2px 2px;
}

.upload-input {
  position: relative;
  top: -62px;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

.btn {
  display: block;
  width: 140px;
  height: 40px;
  background: darkmagenta;
  color: #fff;
  border-radius: 3px;
  border: 0;
  box-shadow: 0 3px 0 0 hotpink;
  transition: all 0.3s ease-in-out;
  font-size: 14px;
}

.btn:hover {
  background: rebeccapurple;
  box-shadow: 0 3px 0 0 deeppink;
}


</style>
 <script src="https://100dayscss.com/codepen/js/jquery.min.js"></script>
</head>
<body style="background-color:black;">
<%
 String email = request.getParameter("email");

%>
<div class="frame">
	<div class="center">
		<div class="title">
			<h1>Client Requirement</h1>
		</div>

		<div class="dropzone">
			<img src="http://100dayscss.com/codepen/upload.svg" class="upload-icon" />
			<input type="file" class="upload-input" />
		</div>

		<button type="button" onclick="upload()" class="btn" name="uploadbutton">Upload file</button>

	</div>
</div>
<!-- original pen: https://codepen.io/roydigerhund/pen/ZQdbeN  -->

<!-- NO JS ADDED YET -->
<script>

var email = '<%=email%>';
var role = "cli";
function upload(){
	window.location.href="Data_up?email="+email+"&&role="+role;
}


</script>
</body>
</html>