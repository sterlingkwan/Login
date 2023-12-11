<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="style.css">
<script>
function validate() {
     var userId = document.form.userId.value;
     var password = document.form.password.value;
 
     if (userId==null || userId=="") {
     	alert("User ID cannot be blank");
     	return false;
     }
     else if(password==null || password=="") {
     alert("Password cannot be blank");
     return false;
     }
}
</script>

</head>
<body>
	<div class="wrapper">
	<form action=LoginServlet method=post onsubmit="return validate()">
		<h1>User Login</h1>
		<div class="input-box">
			<input type="text" placeholder="User ID" name="userId" required>
			<i class='bx bxs-user'></i>
		</div>
		<div class="input-box">
			<input type="password" placeholder="Password" name="password" required>
			<i class='bx bxs-lock-alt'></i>
		</div>
		<button type="submit" class="btn">Login</button>
		<div class="error-message">
		<span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
	         : request.getAttribute("errMessage")%></span>
		</div>
	</form>
	</div>
	<table>
	</table>
</body>
</html>