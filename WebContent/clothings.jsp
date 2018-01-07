<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%;border:thin ;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="menu.jsp"/>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.design1{
	width:300px;
	margin: 0 0 12px 12px;
	border: 1px solid #e1d9d9;
	padding: 20px 20px 20px 20px;
	background-color:#88888;
	overflow: visible;
	position: relative;
	zoom: 1;
	webkit-box-shadow: 1px 1px 3px 0 #88888;
    -moz-box-shadow: 1px 1px 3px 0 #88888;
    box-shadow: 1px 1px 3px 0 #88888;	
	background-size: 200% 400px;
	background-position: left bottom;
} 

</style>
</head>
<body>

<table cellspacing="2px" >
<tr>
<td style="color:black ; font-size:25px ; border: none; font-family: Comic Sans MS; " colspan="5"><strong>Hoodies</strong></td>
</tr>
<tr>
<c:forEach items="${hoodies }" var="a" varStatus="status" begin="1" end="5">
<td class="design1">
<a href="ProductPageController?id=${a.id}">
<div class="product_preview_container">
<ul style="list-style: none; color:black">
<li><img class="product_image" src="imageViewer.jsp?imgID=${a.id}" height=75px width=75px/>
<li><c:out value="${a.name}(${a.size})"/></li>
<li style="font-weight:bold"><c:out value="$${a.price}"/></li>
</ul>
</div>		
</a>
</td>
 </c:forEach>
 <td>
 <form action="FilterProducts?action=hoodies" method="post">
 <input type="submit" name="Shop Mugs" value="See All" class="btn btn-md btn-success" align="middle">				
 </form>
 </td>
 </tr>
 
 <tr>
<td style="color:black ; font-size:25px ; border: none; font-family: Comic Sans MS; " colspan="5"><strong>Tanktops</strong></td>
</tr>
<tr>
<c:forEach items="${tanktop }" var="a" varStatus="status" begin="1" end="5">
<td class="design1">
<a href="ProductPageController?id=${a.id}">
<div class="product_preview_container">
<ul style="list-style: none; color:black">
<li><img class="product_image" src="imageViewer.jsp?imgID=${a.id}" height=75px width=75px/>
<li><c:out value="${a.name}(${a.size})"/></li>
<li style="font-weight:bold"><c:out value="$${a.price}"/></li>
</ul>
</div>
</a>
</td>
 </c:forEach>
 <td>
 <form action="FilterProducts?action=tanktop" method="post">
 <input type="submit" name="Shop Mugs" value="See All" class="btn btn-md btn-success" align="middle">				
 </form>
 </td></tr>
 <tr>
<td style="color:black ; font-size:25px ; border: none; font-family: Comic Sans MS; " colspan="5"><strong>T-Shirts</strong></td>
</tr>
<tr>
<c:forEach items="${tshirt}" var="a" varStatus="status" begin="1" end="5">
<td class="design1">
<a href="ProductPageController?id=${a.id}">
<div class="product_preview_container">
<ul style="list-style: none; color:black">
<li><img class="product_image" src="imageViewer.jsp?imgID=${a.id}" height=75px width=75px/>
<li><c:out value="${a.name}(${a.size})"/></li>
<li style="font-weight:bold"><c:out value="$${a.price}"/></li>
</ul>
</div>
</a>
</td>
 </c:forEach>
 <td>
 <form action="FilterProducts?action=tshirt" method="post">
 <input type="submit" name="Shop Mugs" value="See All" class="btn btn-md btn-success" align="middle">				
 </form>
 </td>
 </tr>
 
  </table>
  <div class="footer">
	<jsp:include page="footer.jsp"/>
</div>
</body>
</html>