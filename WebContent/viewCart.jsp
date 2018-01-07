<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- <link rel="stylesheet" type="text/css" href="css/topbar.css" />
<link rel="stylesheet" type="text/css" href="css/searchbar.css" />  -->
<title>HomePage</title>
</head> 
<jsp:include page="LoginRegisterDisplay.jsp"/>	
<jsp:include page="menu.jsp"/>
<style>

td img {
   padding: 10px;
} 

.design1{
 border-bottom: 1px solid black ;
 
}
</style>
<body>
<%
if(session.getAttribute("productImage")!=null){
	
%>
<!-- pritee's code -->

<h1>Cart Details</h1>
 <div style="min-height: 455px";>
 
 <form method="post" name="quickPay" action="CardController?productId=${a.productId}">
<input type="submit" class="btn btn-warning" style="margin-top:10px ; margin-left:1px; width:153px" value="Continue Shopping" name ="action"/>
</form>
<div style="margin-left:87%; margin-top:30px ; ">
<form method="post" name="viewCart" action="CartController?productId=${a.productId}">
<input type="submit" class="btn btn-warning" value="Proceed to checkout" name ="action"/>
</form>

<%if(!session.getAttribute("userName").equals("Guest")){
	%>
<center>-OR-</center>
<form method="post" name="quickPay" action="CardController?productId=${a.productId}">
<input type="submit" class="btn btn-warning" style="margin-top:10px ; margin-left:1px; width:153px" value="Quick Pay" name ="action"/>
</form>
<%} %>
</div>
 <c:forEach items="${productImage}" var="a" varStatus="status">
<form method="post" name="viewCart" action="CartController?productId=${a.productId}">
<!-- <div class="product_preview_container">
 --><table width=100% >

				<tr class = "design1">
					<!-- <td width="50%" align="left" >
<!-- <div  height="100%"   >
 -->
					<td width=20%><a href="ProductPageController?id=${a.productId}&displaydesign=no"><img src="maskedImageViewer.jsp?imgID=${a.productId}"
						height=100px width=100px style="border: none;" /></a></td>

					<td width=30%>
						<h5 class="mb-1" style="font-weight: bold;">
							<c:out value="${a.name}" />
						</h5>
						<p class="mb-1">Description</p>
					</td>
					<td width=20%>
						<h5 class="mb-1" style="font-weight: bold;">Size</h5>
						<p class="mb-1">
							<c:out value="${a.size}" />
						</p>
					</td>
					<td width=10%></a>
						<h5 class="mb-1" style="font-weight: bold;">Price</h5>
						<p class="mb-1">
							<c:out value="$${a.price}" />
						</p></td>
						<td width=10%></a>
						<h5 class="mb-1" style="font-weight: bold;">Quantity</h5>
						<p class="mb-1">
							<c:out value="${a.quantity}" />
						</p></td>
						<td width=10%>
					<a style= "color:red; margin-top:10%;" href ="CartController?productId=${a.productId}&&action=Delete" >Delete</a> 
						
<!-- 					    <input type="submit" class="btn btn-danger" value="Delete" name ="action"/>
 -->						</td>
				</tr>
			</table>
			</form>
 </c:forEach> 
 <%}
else {%>
<div style="min-height: 505px";>

     <h1>No items in cart</h1>
     <form method="post" name="quickPay" action="CardController?productId=${a.productId}">
<input type="submit" class="btn btn-warning" style="margin-top:10px ; margin-left:1px; width:153px" value="Continue Shopping" name ="action"/>

</form>
     </div>
<%}%>
</div>
<!-- End here -->
<div class="push"></div>
<div class="footer">
	<jsp:include page="footer.jsp"/>
</div>

</body>
</html>