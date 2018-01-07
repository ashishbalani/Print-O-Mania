<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%;border:thin ;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
<head>
<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="menu.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>templatepage</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<script src="./js/jquery-3.2.0.min.js"></script>
<script src="./js/bootstrap.min.js"></script>

</head>
<body>

<div class="container" >
<button class="btn btn-success">Add to Cart</button>
  <h2>CUSTOMIZE YOUR PRODUCT HERE</h2>
  
  <ul class="nav nav-tabs">
    <li class="active"><a href="#home">Home</a></li>
    <li><a href="#menu1">Add Text</a></li>
    <li><a href="CategoriesServlet#menu2">Add Art</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active" >
    
 
<div class="col-xs-3 col-md-3" style="width='100px'">
        <c:forEach var="image" items="${images}">
	     <img src="./templates/${image}" width="60" height="60"/>  
	   </c:forEach>
      </div>
      
      
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Add Text</h3>
      <FORM NAME="form2" METHOD="GET">
		<p>Enter Your Text Here</p> <INPUT TYPE="TEXT" NAME= "ADD_TEXT" VALUE="">
	</FORM>
      
    </div>
 	  <div id="menu2" class="tab-pane fade">
      <h3>Add Art</h3>
      
	<ul style="list-style:none;">
	
	  <c:forEach var="l" items="${list}">
	    <a href="ImagesServlet?item=${l}">  <li><c:out value="${l}" /></li></a>
	   </c:forEach>
	   
	 </ul>
	
	 
		
    </div>
    
  </div>
  
</div>


	
	
	
<script>
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});
</script>	
</body>
</html>