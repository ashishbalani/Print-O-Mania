<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UAlbany PY466171</title>
</head>
<body> 
<%request.getRequestDispatcher("ProductController").include(request,response);%> 

<div style="color:red">${UserLogInErr}</div>

<center><h1>Login</h1></center>
<form action="Signin" method="get">
<table border="1" align="center" cellpadding="20">
<tr>
<td><table align="center">
<tr><td>
<input type ="submit" value="Sign In" name="signin"><br><br>
</td>
</tr>
<tr><td><input type ="submit" value="Create a new account" name="signin"></td>
</tr></table>
</td>
</tr>
</table>
</form>
</body>
</html>