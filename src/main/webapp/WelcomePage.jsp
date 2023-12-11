<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome</title>
</head>
<%
	String u  = (String) (request.getAttribute("userId"));
	String r  = (String) (request.getAttribute("role"));
	if(session.getAttribute("userId") != null){
		u = (String) (session.getAttribute("userId"));
	}
	if(session.getAttribute("role") != null){
		r = (String) (session.getAttribute("role"));
	}
%>
<body>
<div align=center>
<h1>Welcome Page</h1>
</div>
<p style="text-align:center">Welcome <%=u%> </p>
	<%
		session.setAttribute("userId", u);
		session.setAttribute("role", r);
        if (r.equals("M")) {
    %>
        <form style="text-align:center" action='Restricted.jsp'>
        <input type=submit value="RESTRICTED ACCESS" />
        </form>
    <%
        } 
	%>
<div style="text-align: center"><a href="LogoutServlet">Logout</a></div>
</body>
</html>