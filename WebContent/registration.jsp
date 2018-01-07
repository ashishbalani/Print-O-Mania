
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html style="margin-left:10%;margin-right:10%">
 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print_O_Mania</title>
<!-- <link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<link rel="stylesheet" type="text/css" href="css/topbar.css" />
<link rel="stylesheet" type="text/css" href="css/searchbar.css" /> -->
<div class="menu">
<!--  <ul class="topnav" id="myTopnav">
 --> <li>
<%--  <jsp:include page="menu.jsp"/>
 <jsp:include page="footer.jsp"/> --%>
 </li>
 
<!--   <li><a class="active" href="homePage.jsp">Home</a></li>
   <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="Contactus.jsp" color="black">About us</a></li> -->
    
<!--  <img style="padding-left: 10%;
    margin-top: 2%;
    margin-left: 50%;
    width: 100%;
	height: 100%;
    max-height: 30px;
    max-width: 500px" src="img/logo.jpeg">
 </li> -->
 



</head>
   <script>
    function check_pass(){
    if (document.getElementById('password').value==document.getElementById('confirmPassword').value){
        document.getElementById('message').innerHTML = " &#x2714;";
	}
	else {
  	  document.getElementById('message').innerHTML = " &#x274C";
	}
    }
    </script>
<style>

body{
   background-image: url("image/printomania.jpg");
   background-size: 100% 100%;
}


input[name =action]:hover {
    background-color:  #b3b3b3;
    cursor:pointer;
}

</style>

<body>
<%
if(session != null && session.getAttribute("userId") != null){
	response.sendRedirect("homePage.jsp");
} %>
 <div style="color:white; font-weight:bold;font-size:18px; margin-left:200px">${success}</div>
 <div style="color:red; font-weight:bold;font-size:18px; margin-left:200px">${error}</div>
<form method="post" name="register" action="RegistrationController">
<table  width=50% style="margin-left:100px;"> 
<tr>
<td height=60px>
               <div style="color:white; font-weight:bold">First Name:</td><td><input type="text"  style="height:30px; font-weight:bold;" name="fname"  placeholder="firstname"   /></div>
                </td></tr>
                <tr>
                <td height=60px>
               	<div style="color:white; font-weight:bold">Last Name:</td><td><input type="text" style="height:30px; font-weight:bold" name="lname"  placeholder="lastname" /></div>
                </td></tr>
               <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">User Name:</td><td><input type="text" style="height:30px; font-weight:bold" name="userId"  placeholder="username" /></div>
                </td></tr>
                <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Email Id:</td><td><input type="text" style="height:30px; font-weight:bold" name="emailId"  placeholder="username@gmail.com"  /></div>
                </td></tr>
                 <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Password:</td><td><input type="password" style="height:30px;margin-top:20px; font-weight:bold" name="passwordsignup"  placeholder="password"  /><div style="color:white;width:40%; font-size:80%">(Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character)</div></div>
                </td></tr>
                <tr>
                <td height=60px>
                  <div style="color:white; font-weight:bold">Confirm Password:</td><td><input type="password" style="height:30px; font-weight:bold" name="passwordsignup_confirm" id ="confirmPassword"  placeholder="confirmpassword" onkeyup='check_pass();'/><span id='message'></span></div>
                </td></tr>
                <input type ="hidden" name="role" value="customer"></tr>
                 <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Address:</td><td><textarea rows="5" cols="32"  style=" font-weight:bold"  name="address"  placeholder="address" ></textarea></div>
                </td></tr>
                <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Gender:</td><td><select name="gender" style="height:30px; font-weight:bold">
                  <option disabled="" selected="" value="0"></option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                </select></div>
                </td></tr>
                <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Country:</td><td><select name="country" style="height:30px; font-weight:bold">
                  <option disabled="" selected="" value="0"></option>
                  <option value="U.S. Only">U.S. Only</option>
                  <option value="Outside U.S.">Outside U.S.</option>
                </select></div>
                </td></tr>
                  <tr> <td>  <div style="color:white; font-weight:bold">Do you want to subscribe for notifications?</td>
                <td><select name = "subscription">
                <option>Select anyone from below!</option>
                <option value = "1">Yes</option>
                <option value = "0">No</option>
                </select></td></tr>
                </table>
                <div class="btn" >
                  <input type="submit" style="height:40px; width:85px; border-radius:10px; font-weight:bold; font-size:18px; margin-left:200px;margin-top:30px" value="Register" name ="action"/>
                  <input type="submit" style="height:40px; width:180px; border-radius:10px; font-weight:bold; font-size:18px; margin-left:50px;margin-top:30px" value="Back To Homepage" name ="action"/>
                </div>
               
               
                
              </form>
</body>
</html>