<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%;border:thin ;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome|Home Page</title>
</head>
<body>


<!-- pritee's code -->
<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="menu.jsp"/>


<div  id='mainpage'>
<div id="banner">
<img class="mySlides" src="image/printomania.jpg" width=100% height=414px>
<img class="mySlides" src="image/sl1.JPG" style="width:100%"  height=414px>
  <img class="mySlides" src="image/sl2.JPG" style="width:100%"  height=414px>
  <img class="mySlides" src="image/sl3.png" style="width:100%"  height=414px>
  <img class="mySlides" src="image/sl4.png" style="width:100%"  height=414px>
  <img class="mySlides" src="image/sl5.png" style="width:100%"  height=414px>
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script><br/><br/><br/><br/>
<div id="shop" >

<table width=100% style="top:-40px'">
	<tr style="position:relative">
		<td align="center"> 
		<div  style="position:relative;width:200px;height:200px;">
		<form action="FilterProducts?action=clothings" method="post">
			<img id="imgbtn" border="4" src="image/clothes-on-rack.jpg" width=200px height=200px>
			<div class="butn" style="position:absolute;top:165px;">
				<input type="submit" name="Shop Clothing" value="Shop Clothing" class="btn btn-md btn-success" style="display: inline-block; ">		<!-- change here -->		
			</div>		
			</form>

			</div>
		 	
		
		</td>
		<td align="center">
		<div style="position:relative;border:thin;border-color:black;width:200px;height:200px">
			<form action="FilterProducts?action=mugs" method="post">
			<img id="imgbtn" src="image/mugs.jpg" width=200px height=200px style="border:thin;border-color:black"/>
			<div class="butn" style="position:absolute;top:165px;">
				<input type="submit" name="Shop Mugs" value="Shop Mugs" class="btn btn-md btn-success">	
			</div>			
			</form>
			</div>
		 	
	
		</td>
		<td align="center">
		<div style="position:relative;border:thin;border-color:black">
		<form action="FilterProducts?action=posters" method="post">
			<img id="imgbtn" src="image/poster.jpg" style="" width=200px height=200px border="5"/>
			<div class="butn" style="position:absolute;top:165px;">
				<input type="submit" name="Shop Posters" value="Shop Posters" class="btn btn-md btn-success">				
			</div>
			</form>
			</div>
		 	
		
		</td>
	</tr>
</table>
</div>
<div style="height:300px">

</div>
</div>

<div class="push"></div>
<div class="footer">
	<jsp:include page="footer.jsp"/>
</div>

</body>
</html>

