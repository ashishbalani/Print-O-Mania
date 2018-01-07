<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="template_nav.jsp"/>
<title>Insert title here</title>
</head>
<body>
<ul style="list-style:none;">
	
	  <c:forEach var="l" items="${list}">
	    <a href="ImagesServlet?item=${l}">  <li><c:out value="${l}" /></li></a>
	   </c:forEach>
	 </ul>	

</body>
</html>