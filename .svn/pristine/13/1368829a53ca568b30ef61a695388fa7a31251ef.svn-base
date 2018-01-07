<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html style="margin-left:10%;margin-right:10%">
 --><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print_O_Mania</title>
</head>
<style>

body{
   background-image: url("image/printomania.jpg");
   background-repeat: no-repeat;
   background-size: 100% 230%;
}

input[name =action]:hover {
    background-color:  #b3b3b3;
    cursor:pointer;
}

</style>

<body>
<%
if(session == null && session.getAttribute("userId") == null){
	response.sendRedirect("homePage.jsp");
} %>
 <div style="color:white; font-weight:bold;font-size:18px; margin-left:200px;margin-top:50px">${success}</div>
 <div style="color:red; font-weight:bold;font-size:18px; margin-left:200px;margin-top:50px">${error}</div>
<form method="post" name="update" action="UpdateController">
<table  align="center" width=50% style="margin-left:100px;margin-top:200px"> 
<tr>
<td height=60px>
               <div style="color:white; font-weight:bold">Current Password:</td><td><input type="password"  style="height:30px; font-weight:bold" name="currentpassword"  placeholder="current password" /></div>
                </td></tr>
                <tr>
                <td height=60px>
               	<div style="color:white; font-weight:bold">New Password:</td><td><input type="password" style="height:30px; font-weight:bold" name="passwordsignup"  placeholder="new password"  /><div style="color:white;width:40%; font-size:80%">(Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character)</div></div>
                </td></tr>
             	<td height=60px>
               	<div style="color:white; font-weight:bold">Confirm Password:</td><td><input type="password" style="height:30px; font-weight:bold" name="passwordsignup_confirm"  placeholder="confirm password" /></div>
                </td></tr>
               
                </table>
               
                <div class="btn" >
                  <input type="submit" style="height:40px; width:80px; border-radius:10px; font-weight:bold; font-size:18px; margin-left:200px;margin-top:30px" value="Update" name ="action1"/>
                   <input type="submit" style="height:40px; width:180px; border-radius:10px; font-weight:bold; font-size:18px; margin-left:30px;margin-top:30px" value="Back To Homepage" name ="action"/>

                </div>
              </form>
</body>
</html>