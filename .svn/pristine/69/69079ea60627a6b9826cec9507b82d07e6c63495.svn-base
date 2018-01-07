<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<link rel="stylesheet" type="text/css" href="css/searchbar.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/header.css"/>
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
.dropit {
	display:block;
}
</style>
<nav class='navbar navbar-toggleable-md navbar-dark bag-primary navbar-static-top' style="background-image: url('image/texturebg.png');">
<div class='container-fluid'>
	<div class='navbar-header'>
	
	<a style="color:white;" class="navbar-brand" href="index.jsp">
       Print-O-Mania
       </a>
	</div>
	<!-- <form class="navbar-form navbar-left">
        <div class="form-group">
          <input id="search" type="text" class="form-control input-group" placeholder="Search" >
        </div>
        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
      </form> -->
      
      <form action="SearchController" method="post" class="navbar-form navbar-left">	
        <div class="form-group">
          <input id="search" type="text" class="form-control input-group" placeholder="Search" name="search" >
        </div>
        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
      </form>
     
<% 
if(session.getAttribute("userId")!=null)
{%>
<div class="nav-link navbar-right" style="top:15%">
<div class="dropdown">
<table style="border-color:#b1cfe7;border-style:ridge ;">
  <tr><td><button class="btn btn-lg btn-secondary" style="background-color:#4187c5" type="button" id="dropdownMenu2" >
 	<i onclick="location.href='CartController'" style="font-size:30px;color:silver;" class="glyphicon glyphicon-shopping-cart"></i>
 	</button></td>
 	
 	<td><button class="btn btn-lg btn-secondary" style="background-color:#4187c5" type="button" id="dropdownMenu2" onclick="location.href='CartController?action=View'" >
 	 View Cart	
  </button></td>
  <!-- <td><button  class=" btn btn-lg btn-secondary dropdown-toggle" style="background-color:#4187c5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <span  id="cart" style="font-size:x-large;" class="dropdown caret" ></span>
  </button>
  <div id="cart_menu" class="dropdown-content dropdown-menu-left" aria-labelledby="dropdownMenu2" style="z-index: 1; width:100%;background-color:#4187c5;">
  <a href="#">asdf</a>
  </div> 
  
  </td></tr>-->
</table>
  </div>
</div>

<div class="nav-link navbar-right" style="top:15%;">
<div class="dropdown">
<table style="border-color:#b1cfe7;border-style:ridge ;">
 <tr> 
 <td><button class="btn btn-lg btn-secondary" style="background-color:#4187c5" type="button" id="user_button">
 	<i class="glyphicon glyphicon-user" style="font-size:30px"></i>
  </button></td>
  <td><button class="btn btn-lg btn-secondary" style="background-color:#4187c5" type="button" id="dropdownMenu2">
 	Hi ${userName}
  </button></td>
  <td><button class="btn btn-lg btn-secondary dropdown-toggle" style="background-color:#4187c5" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <span id='user' style="font-size: xx-large;" class="caret" ></span>
  </button>
    <div id="user_menu" class="dropdown-content dropdown-menu-left" style="width:100%;background-color:#4187c5" aria-labelledby="dropdownMenu2" >
   <a class="dropdown-item" href='UpdateController?action=Profile'>Update Profile</a>
   <div id="user_menu" class="dropdown-content dropdown-menu-left" style="width:100%;background-color:#4187c5" aria-labelledby="dropdownMenu2" >
   <a class="dropdown-item" href='UpdateController?action=Password'>Update Password</a>
    <div id="user_menu" class="dropdown-content dropdown-menu-left" style="width:100%;background-color:#4187c5" aria-labelledby="dropdownMenu2" >
   <a class="dropdown-item" href='OrderController?action=Order'>Orders</a>
  <div id="user_menu" class="dropdown-content dropdown-menu-left" style="width:100%;background-color:#4187c5" aria-labelledby="dropdownMenu2" >
   <a class="dropdown-item" href='SigninController?signin=Logout'>Logout</a>
  </div></td></tr>
</table>
</div>
</div>
<%}
else {%>	
 <% 
				if(request.getAttribute("error")!=null)
				{%>
				<script>
						document.getElementById("id01").style.display='block';
						</script>
				<%}
						else if(request.getAttribute("error1")!=null)
	{%>
	<script>
			document.getElementById("id01").style.display='block';
			</script>
	<%}
				else {%>
				<%}%>
				
<button id="loginButton" onclick="document.getElementById('id01').style.display='block'" class="button" ><span>Login / Register</span></button>

<%}%>


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
</div>

</nav>  
<jsp:include page="header.jsp"/>
<!-- <div class="page-sidebar ">

   
  <div id="mySidenav" class="sidenav">
  <h2 align = "center">Print_O_Mania</h2>
  <br>
  <br>
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" >&times;</a>
  <br>
  <a href="#">Profile</a>
  <br>
  <a href="#">Products</a>
  <br>
  <a href="#">Design</a>
  <br>
  <a href="#">About</a>
</div>

<div id="main">
  
  <span style="font-size:20px;cursor:pointer" onclick="openNav()" id="buttondisp">&#9776;</span>
</div>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.getElementById("buttondisp").style.display = "none";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.getElementById("buttondisp").style.display = "inline";
}
</script>
  </div> -->