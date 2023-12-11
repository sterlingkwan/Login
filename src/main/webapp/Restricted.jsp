<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RESTRICTED</title>
</head>
<body style="background-image: url('warning.jpg'); background-size: cover; background-position: center;">
<div align=center >
<h1>RESTRICTED CONTENT</h1>
<%
String u = (String) (session.getAttribute("userId"));
String r = (String) (session.getAttribute("role"));
session.setAttribute("userId", u);
session.setAttribute("role", r);
%>

<form style="text-align:center" action='WelcomePage.jsp'>
<input type=submit value="Back" />
        
</form>
</div>
</body>
</html>