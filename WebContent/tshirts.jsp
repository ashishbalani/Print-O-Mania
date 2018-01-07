<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Product" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%;border:thin ;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
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
<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="menu.jsp"/>
<body>
 <div style="min-height: 500px";>


<%
List<Product> listoftshirts=new ArrayList();
String s=(String)request.getAttribute("type");


 listoftshirts = (List<Product>)session.getAttribute("tshirt");

if(s.matches("tanktop"))
{

 listoftshirts = (List<Product>)session.getAttribute("tanktop");
}
if(s.matches("hoodies"))
{

 listoftshirts = (List<Product>)session.getAttribute("hoodies");
}
if(s.matches("mugs"))
{

 listoftshirts = (List<Product>)session.getAttribute("mug");
}
if(s.matches("poster"))
{

 listoftshirts = (List<Product>)session.getAttribute("poster");
}

int tshirts=listoftshirts.size()/5;

%>

<table>
<tr>
<td style="color:black ; font-size:25px ; border: none; font-family: Comic Sans MS; " colspan="5"><strong><%=s %></strong></td>
</tr>
<% 
for(int i=0;i<tshirts;i++){
%>
<tr>
<%for(int j=0;j<5;j++){%>
<td class="design1">
<a href="ProductPageController?id=<%=listoftshirts.get(i*5+j).getId()%>">
<div class="product_preview_container">
<ul style="list-style-type: none; color:black">
<li><img class="product_image" src="imageViewer.jsp?imgID=<%=listoftshirts.get(i*5+j).getId()%>" height=75px width=75px/>
<li><p><%=listoftshirts.get(i*5+j).getName()%>(<%=listoftshirts.get(i*5+j).getSize()%>)</p></li>
<li style="font-weight:bold; font-size: initial"><c:out value="<%=listoftshirts.get(i*5+j).getPrice()%>"/>$</li>
</ul>
</div>
</a>
</td>

<%} %>
</tr>
<%} %>
</table>

</div>
</body>
</html>
<div class="push"></div>
<div class="footer">
	<jsp:include page="footer.jsp"/>
</div>