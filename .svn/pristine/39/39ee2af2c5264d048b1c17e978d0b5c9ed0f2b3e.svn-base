<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html style="margin-left:10%;margin-right:10%">
 --><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print_O_Mania</title>
<%-- <link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<link rel="stylesheet" type="text/css" href="css/topbar.css" />
<link rel="stylesheet" type="text/css" href="css/searchbar.css" />--%>
<!-- <div class="menu">
 --> <%-- <ul class="topnav" id="myTopnav">
 <li>
 <jsp:include page="menu.jsp"/>
 <jsp:include page="footer.jsp"/>
 </li>  --%>
<!--  
  <li><a class="active" href="homePage.jsp">Home</a></li>
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
 

<%--   <% 
if(session.getAttribute("userId")!=null)
{%>
<li>

<form action="SigninController" method="get">
<h1 class="button" style="right:7%">Hi ${userName}</span></h1>
<input type ="submit"  value="Logout" name="signin" class="button" id="id02">
<a href="CartController" class="cartcss">Cart</a> 
<a href="RegistrationController" class="cartcss">Update</a> 
</h1></form>
<%}
else {%>
<li>
    
    <h1 style="margin-left: 100%;width:100%"> Print-O-Mania</h1>
    </li>
<li>

<button onclick="document.getElementById('id01').style.display='block'" class="button" ><span>Login / Register</span></button>
<%}%>
</li>
  
 
  <li class="icon">
    <a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">&#9776;</a>
  </li>
</ul>
<br>

<br>


<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script> --%>

</head>
<style>

body{
   background-image: url("image/printomania.jpg");
   background-repeat: no-repeat;
   background-size: 100% 170%;
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
<table  width=30% style="margin-left:100px;margin-top:90px"> 
<tr>
<td height=60px>
               <div style="color:white; font-weight:bold">First Name:</td><td><input type="text"  style="height:30px; font-weight:bold" name="fname"  placeholder="firstname" value= "${ user.fname}"  /></div>
                </td></tr>
                <tr>
                <td height=60px>
               	<div style="color:white; font-weight:bold">Last Name:</td><td><input type="text" style="height:30px; font-weight:bold" name="lname"  placeholder="lastname" value= "${ user.lname}" /></div>
                </td></tr>
              <%--   <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">User Name:</td><td><input class="field" style="height:30px; font-weight:bold" name="userId" required type="text" placeholder="username" value= "${ user.userId}" /></div>
                </td></tr> --%>
                <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Email Id:</td><td><input type="text" style="height:30px; font-weight:bold" name="emailId"  placeholder="myusername@gmail.com"  value= "${ user.emailId}"/></div>
                </td></tr>
                 <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Address:</td><td><input type="text" style="height:30px; font-weight:bold" name="address"  placeholder="address"  value= "${ user.address}"/></div>
                </td></tr>
                <input type ="hidden" name="role" value="customer"></tr>
                <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Gender:</td><td><select name="gender" style="height:30px; font-weight:bold">
                  <option disabled="" selected="" value="0">${ user.gender} </option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                </select></div>
                </td></tr>
                <tr>
                <td height=60px>
                <div style="color:white; font-weight:bold">Country:</td><td><select name="country" style="height:30px; font-weight:bold">
                  <option disabled="" selected="" value="0">${ user.country}</option>
                  <option value="U.S. Only">U.S. Only</option>
                  <option value="Outside U.S.">Outside U.S.</option>
                </select></div>
                </td></tr>
                 <tr> <td>  <div style="color:white; font-weight:bold">Do you want to subscribe for notifications?</td>
                <td><select name = "subscribe">${ user.subscription} 
                <option>${ user.subscription} </option>
                <option value = "1">Yes</option>
                <option value = "0">No</option>
                </select></td></tr>
                </table>
               
                <div class="btn" >
                  <input type="submit" style="height:40px; width:80px; border-radius:10px; font-weight:bold; font-size:18px; margin-left:200px;margin-top:30px" value="Update" name ="action"/>
                   <input type="submit" style="height:40px; width:180px; border-radius:10px; font-weight:bold; font-size:18px; margin-left:50px;margin-top:30px" value="Back To Homepage" name ="action"/>

                </div>
              </form>
</body>
</html>