<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<title>HomePage</title>
</head>

<body>
<jsp:include page="menu.jsp"/>
<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="navigation.jsp"/><br/>
<div class="main_page">
<% 
if(session.getAttribute("addedToCart")!=null)
{%>
<div style="color:black">${addedToCart}</div> 
<%
session.setAttribute("addedToCart", null);
} %>
<c:forEach items="${viewProduct}" var="a" varStatus="status" >
	<form action="templatePage.jsp" method="post">
			<div class="product_preview_container">
			<table width="100%">
			<tr><td align="center"><img class="product_image" src="maskedImageViewer.jsp?imgID=${a.id}" height=400px width=300px/></td>	
			<td width="50%" align="left" >
			<h1><b>Product Details</b></h1>
			<div class="list-group" height="100%">
				<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    				<div class="d-flex w-100 justify-content-between">
      					<h5 class="mb-1" style="font-weight: bold;"><c:out value="${a.name}"/></h5>
    				</div>
    				  <input type="hidden" name="productName" value="${a.name}"></input>
    				<p class="mb-1">Description</p>
  				</a>
  				
  				<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    				<table class="d-flex w-100 justify-content-between"><tr><td>
      					<h5 class="mb-1" style="font-weight: bold;">Size</h5>
    				<p class="mb-1"><input name="getSize" type="text" class="selectpicker" value="${a.size}" readonly/></p>
   	 				</td></tr>
   	 				<tr><td>
      					<h5 class="mb-1" style="font-weight: bold;">Quantity</h5>
      					<p class="mb-1"><input name="getQuantity" type="text" class="selectpicker" value="${a.quantity}" readonly/></p>
   	 				</td></tr>
   	 				</table>
    				
  				</a>
  				<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    				<div class="d-flex w-100 justify-content-between">
      					<h5 class="mb-1" style="font-weight: bold;" >Price</h5>
    				</div>
    				<input type="hidden" name="price" value="${a.price}" readonly></input>
    				<p class="mb-1"><c:out value="$${a.price}"/></p>
  				</a>
  				
  				<a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
    				<div class="d-flex w-100 justify-content-between">
      					<h5 class="mb-1" style="font-weight: bold;">
      				
      						<p>Final Review</p>
      						
      						
      					</h5>
    				</div>
    			</a>
			</div>
			</table>
			</div>
  		<input type="hidden" name="productId" value="${a.id}" /> 
	</form>
 </c:forEach>

</div>
<!-- End here -->
</body>
<jsp:include page="footer.jsp"/>
</html>