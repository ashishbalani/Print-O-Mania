<link rel="stylesheet" type="text/css" href="Admin/css/demo.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/tabs.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/topbar.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/searchbar.css" />
<div class="menu">
 <ul class="topnav" id="myTopnav">
 <li>
 <jsp:include page="Adminmenu.jsp"/>
 
 </li>
 
  <li><a class="active" href="homePage.jsp">Customer View</a></li>
  <!--  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>-->
<!--   <li><a href="Contactus.jsp" color="black">About us</a></li> -->
    
<!--  <img style="padding-left: 10%;
    margin-top: 2%;
    margin-left: 50%;
    width: 100%;
	height: 100%;
    max-height: 30px;
    max-width: 500px" src="img/logo.jpeg">
 </li> -->
 

  <% 
if(session.getAttribute("userId")!=null)
{%>
<li>

<form action="SigninController" method="get">
<h1 class="button" style="right:7%">Hi ${userName}</span></h1>
<input type ="submit"  value="Logout" name="signin" class="button" id="id02">

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
</script>

<div id="id01" class="modal">
  
<div class="container">
	
    <section class="tabblue">
		<ul class="tabs blue">
          <!-- <li>
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
                <input type ="hidden" name="role" value="customer"></tr>
                
                <select name="gender">
                  <option disabled="" selected="" value="0">Choose Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
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
          </li> -->
      	  <li>
            <input type="radio" name="tabs blue" id="tab2" checked>
            <label for="tab2">Login</label>
            <div id="tab-content2" class="tab-content">
              <form method="post" name="register" action="SigninController">
                <div class="social"> </div>
                <h4> </h4>
                <span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
                <input class="field" name="userId" required type="text" placeholder="userId"/>
                <span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
                <input class="field" name="passwordsignup" required type="password" placeholder="mypassword"/>
                <div class="btn">
                  <!-- <input type="checkbox" name="terms" required>
                  <em>Keep me logged in </em> -->
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
</div>