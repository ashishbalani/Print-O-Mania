<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<link rel="stylesheet" type="text/css" href="css/searchbar.css" />
<div class="menu">
     
<!--  <img style="padding-left: 10%;
    margin-top: 2%;
    margin-left: 50%;
    width: 100%;
	height: 100%;
    max-height: 30px;
    max-width: 500px" src="img/logo.jpeg">
 </li> -->
 <%
if(session != null && session.getAttribute("userId") != null){
	response.sendRedirect("homePage.jsp");
} %>
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
<div id="id01" class="modal">
  
<div class="container">
		
    <section class="tabblue">
		<ul class="tabs blue">
         <%--  <li>
            <input type="radio" name="tabs blue" id="tab1" checked />
            <label for="tab1">Register</label>
            <div id="tab-content1" class="tab-content">
              <% 
				if(request.getAttribute("error")!=null)
				{%>
						${error}
				<%}
				else {%>
	              <p>You can sign up free at print-o-mania and get super awesome services tips. It's what all the cool kids are doing nowadays.</p>
				<%}%>
              <form method="post" name="register" action="RegistrationController">
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" name="fname" required type="text" placeholder="firstname" /><div style="color:black">${firstNameErr}</div>
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" name="lname" required type="text" placeholder="lastname" /><div style="color:black">${lastNameErr}</div>
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" name="userId" required type="text" placeholder="username" /><div style="color:black">${userNameErr}</div>
                <span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
                <input class="field" name="emailId" required type="email" placeholder="username@gmail.com"/><div style="color:black">${emailIdErr}</div>
                <span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
                <input class="field" name="passwordsignup" id ="password" required type="password" placeholder="password"/><div style="color:black">${passwordErr}</div>
                <span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
                <input class="field" name="passwordsignup_confirm" id ="confirmPassword" required type="password" placeholder="confirmpassword" onkeyup='check_pass();'><span id='message'></span><div style="color:black">${cnPasswordErr}</div>
                <input type ="hidden" name="role" value="customer"></tr>
                
                <select name="gender">
                  <option disabled="" selected="" value="0">Choose Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                </select>
                <select name="country">
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
          </li> --%>
      	  <li>
            <input type="radio" name="tabs blue" id="tab2" checked>
            <label for="tab2">Login</label>
            <div id="tab-content2" class="tab-content">
 			<div style="color:red; font-weight:bold;">${error}</div>
              <form method="post" name="register" action="SigninController">
                <div class="social"> </div>
                <h4> </h4>
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" name="userId" required type="text" placeholder="username"/>
                <span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
                <input class="field" name="passwordsignup" required type="password" placeholder="password"/>
<!--                 <div class="btn">
 -->                  <input type="submit" value="Login"/>
	               
              <!--  </div> -->
	               <a style= "color:black; margin-top:10%;" href ="RegistrationController" class="cartcss">New User? Register</a> 
              </form>
              
                <!-- <form method="post" name="register" action="RegistrationController">
	                  <input type="submit" value="New User? Register" style="text-decoration:underline;background-color: #009EE0; border: 0;"/>
	    				</form> -->
                  
            </div>
          </li>
          	
          <li>
            <input type="radio" name="tabs blue" id="tab3"  />
            <label for="tab3">Reset Password</label>
            <div id="tab-content3" class="tab-content">
              
              <form method="post" name="register" action="EmailController">
                
                <span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
                <input class="field" type="email" placeholder="username@gmail.com" name="emailId"/>
                
                  <input type="submit" value="Send E-mail"/>
                
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