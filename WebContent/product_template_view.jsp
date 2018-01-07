<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="a" items="${viewProduct}" >
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink= "http://www.w3.org/1999/xlink" viewBox="0 0 100 100">
  <image xlink:href="imageViewer.jsp?imgID=${a.id}" height="100px" width="100px"/>
  <text id="t1" x="0" y="50" font-family="Verdana" font-size="35" fill="blue" >${text}</text> 
</svg>
</c:forEach>
</body>
</html>