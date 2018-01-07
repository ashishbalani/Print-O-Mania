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

<title>HomePage</title>
</head>
<style>

td img {
   padding: 10px;
}

.design1{
 border-bottom: 1px solid black;
 
 
}
</style>
<body>
 <div style="min-height: 550px";>

<%
if(session == null && session.getAttribute("userId") == null){
	response.sendRedirect("index.jsp");
} %>
<jsp:include page="LoginRegisterDisplay.jsp"/>	
<jsp:include page="menu.jsp"/>

<h1>Orders</h1> 

 <c:forEach items="${orders}" var="a" varStatus="status">
<form method="post" name="viewCart">
<table width=100% >
				<tr class="design1">
					<td width=20%><img src="orderImageViewer.jsp?imgID=${a.productId}" height=100px width=100px style="border: none;" />
					</td>
					<td width=20%>
						<h5 class="mb-1" style="font-weight: bold;">Description</h5>
						<p class="mb-1">
							<c:out value="${a.name}" />
						</p>
					</td>
					<td width=15%>
						<h5 class="mb-1" style="font-weight: bold;">Size</h5>
						<p class="mb-1">
							<c:out value="${a.size}" />
						</p>
					</td>
					<td width=15%></a>
						<h5 class="mb-1" style="font-weight: bold;">Price</h5>
						<p class="mb-1">
							<c:out value="$${a.price}" />
						</p></td>
					<td width=15%></a>
					<h5 class="mb-1" style="font-weight: bold;">Quantity</h5>
					<p class="mb-1">
						<c:out value="${a.quantity}" />
					</p>
					</td>
					<td width=15%></a>
					<h5 class="mb-1" style="font-weight: bold;">Ordered Date</h5>
					<p class="mb-1">
						<c:out value="${a.purchaseDate}" />
					</p></td>
					<td width=15%></a>
					<h5 class="mb-1" style="font-weight: bold;">Order Status</h5>
					<p class="mb-1">
						<c:out value="${a.orderStatus}" />
					</p></td>
				</tr>
			</table>
			</form>
 </c:forEach> 
 </div>
<div class="push"></div>
<div class="footer">
	<jsp:include page="footer.jsp"/>
</div>
</body>
</html>