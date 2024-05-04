function allocation(val1){
	var email = val1;
	console.log(email);
	/*var email = document.getElementById("em").value;
	var pkey = document.getElementById("pkey").value;
	var data_type = document.getElementById("dt").value;*/
	fetch(`/p9/Work_allo?email=${email}`)
	
	.then(response => response.json())
	.then(st => {
            status = st;
            
            if(status === "sucess"){
            	window.alert("Work Allocated Sucessfully");
                window.location.replace("admin_home.jsp");
            }
            /*else if(status === "sucess" && data_type === "External_data"){
            	window.alert("Verified Sucessfully");
                window.location.replace("Cl_view_req2.jsp?email="+email);
            }
            else if(status === "sucess" && data_type === "Internal_data"){
            	window.alert("Verified Sucessfully");
                window.location.replace("Cl_view_req3.jsp?email="+email);
            }*/
            else if(status === "mismatch"){
                window.alert("Sorry");
            }
            
        });
	/*var pass = document.getElementById("passwordField").value; 
	 window.location.replace("Ad_app1?email="+email+ "&&pkey=" +pkey);*/ 
}