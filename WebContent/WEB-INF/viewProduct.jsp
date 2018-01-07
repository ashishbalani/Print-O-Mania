<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<title>HomePage</title>
</head>

<body>
<!-- pritee's code -->

<form>
<h1 align="right">Hi ${userName}
<input type ="submit"  value="Logout" name="signin" style="position:absolute ; right: 0; ">
</h1></form>
<div class="main_page">
<%-- 
<% out.print("<div>"+session.getAttribute("productList")+"</div>");
%> --%>

 <c:forEach items="${viewProduct}" var="a" varStatus="status" >

<div class="product_preview_container">

<ul>
<%-- <jsp:forward page="/ImageController?imgID=${a.id}"/>
 --%><li><img class="product_image" src="imageViewer.jsp?imgID=${a.id}" height=100px width=100px/>
<li><c:out value="${a.name}(${a.size})"/></li>
<li style="font-weight:bold"><c:out value="$${a.price}"/></li>
</ul>
</div>
 </c:forEach> 
 </div>

<!-- End here -->

<button onclick="document.getElementById('id01').style.display='block'" class="button" ><span>Login </span></button>

<p class="p">New User?</p><a href="Register.jsp" class="reg"style="">Register</a>
<div id="id01" class="modal">
  
<div class="container">
	
    <section class="tabblue">
		<ul class="tabs blue">
          <li>
            <input type="radio" name="tabs blue" id="tab1" checked />
            <label for="tab1">Register</label>
            <div id="tab-content1" class="tab-content">
              <p>You can sign up free at print-o-mania and get super awesome services tips. It's what all the cool kids are doing nowadays.</p>
              <form method="post" name="register" action="RegistrationController">
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" name="fname" required type="text" placeholder="firstname" />
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" name="lname" required type="text" placeholder="lastname" />
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" name="userId" required type="text" placeholder="user_id" />
                <span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
                <input class="field" name="emailId" required type="email" placeholder="myusername@gmail.com"/>
                <span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
                <input class="field" name="passwordsignup" required type="password" placeholder="mypassword"/>
                <span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
                <input class="field" name="passwordsignup_confirm" required type="password" placeholder="confirmpassword"/>
                <select>
                  <option disabled="" selected="" value="0">Choose Gender</option>
                  <option value="1">Male</option>
                  <option value="2">Female</option>
                </select>
                <select class="last">
                  <option disabled="" selected="" value="0">Country</option>
                  <option value="1">U.S. Only</option>
                  <option value="2">Outside U.S.</option>
                </select>
                <div class="btn">
                  <input type="checkbox" name="terms" required>
                  <em>I agree with terms and conditions </em>
                  <input type="submit" value="Sign up"/>
                </div>
              </form>
            </div>
          </li>
      	  <li>
            <input type="radio" name="tabs blue" id="tab2" checked>
            <label for="tab2">Login</label>
            <div id="tab-content2" class="tab-content">
              <form method="post" name="register" action="Signin">
                <div class="social"> </div>
                <h4> </h4>
                <span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
                <input class="field" name="emailsignup" required type="email" placeholder="myusername@gmail.com"/>
                <span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
                <input class="field" name="passwordsignup" required type="password" placeholder="mypassword"/>
                <div class="btn">
                  <input type="checkbox" name="terms" required>
                  <em>Keep me logged in </em>
                  <input type="submit" value="Login"/>
                </div>
              </form>
            </div>
          </li>
          	
          <li>
            <input type="radio" name="tabs blue" id="tab3"  />
            <label for="tab3">Reset Password</label>
            <div id="tab-content3" class="tab-content">
              <form method="post" name="register" action="">
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" type="text" placeholder="myusername" />
                <h4>OR</h4>
                <span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
                <input class="field" type="email" placeholder="myusername@gmail.com"/>
                <div class="btn">
                  <input type="submit" value="Send E-mail"/>
                </div>
              </form>
            </div>
          </li>
	</ul>
	</section>
</div>

</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>


