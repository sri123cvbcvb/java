function pass(var1){
	var role  = var1;
	var role8 = null;
	if(role === "cli"){
		role8 = "Client";
	}
	else if (role === "ad"){
		role8 = "Admin";
	}
	else if(role === "air"){
		role8 = "AirSense";
	}
	else if(role === "pure"){
		role8 = "Purelon";
	}
	else if(role === "tower"){
		role8 = "TowerCraft";
	}
	console.log(role);
	/*var title = document.getElementById("exampleModalLabel").innerHTML = role8 +" "+ "Signin";*/
	// log fields:
	var uname = document.getElementById("exampleInputEmail1");
	var pass = document.getElementById("exampleInputPassword1");
	var rn = document.getElementById("rn");
	var role2 = document.getElementById("role2");
	
	// reg fields:
	var un = document.getElementById("validationDefault01");
	var email = document.getElementById("validationDefault02");
	var pass1 = document.getElementById("password1");
	var cpass1 = document.getElementById("password2");
	var role1 = document.getElementById("role1");
	
	if (role === "cli"){
		rn.style.display = "block";
		role1.value = role;
		role2.value = role;
		console.log("@@@@"+ document.getElementById("role1").value);
		console.log("cli if condition");
	/*	console.log("client if condition");*/
	}
	else if(role === "ad"){
		role2.value = role;
		console.log("ad if condition");
		rn.style.display = "none";
	}
	else if(role === "air"){
		rn.style.display = "none";
		role1.value = role;
		role2.value = role;
		console.log("air if condition");
		
	}
	else if(role === "pure"){
		rn.style.display = "none";
		role1.value = role;
		role2.value = role;
		console.log("pure if condition");
		
	}
	else if(role === "tower"){
		role2.value = role;
		console.log("tower if condition");
		rn.style.display = "none";
		/*pass.style.display = "none";*/
	}
}
/*var uname = document.getElementById("exampleInputEmail1");
var pass = document.getElementById("exampleInputPassword1");
var roles = document.getElementById("role1").value;
function signin(){
	console.log("signin:"+ roles);
	setTimeout(function() {
	    // Your code to be executed after the delay
	    console.log("This will be executed after 5 seconds");
	    console.log("signin:"+ roles);
	}, 5000);
	if (roles === "cli"){
		window.location.href = "client_home.jsp";
	}
	
	
}*/