<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<title>Insert title here</title>
<style>
table.template {
    border-collapse: separate;
    border-spacing: 50px;
}


</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="navigation.jsp"/><br/>
</body>
<table class="template">

<c:forEach items="${image}" var="a" varStatus="status" >

<tr>
	<td><img src="templates/${a}" height=400px width=300px></td>
</tr>
 </c:forEach>
 </table>
</html>