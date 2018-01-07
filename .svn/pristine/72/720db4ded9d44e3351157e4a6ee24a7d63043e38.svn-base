<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="template_nav.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${usertemplate}" var="a" varStatus="status" >
<button onclick="setImage('templateViewer.jsp?imgID=${a.id}')">
<img class="product_image" id="pi" src="templateViewer.jsp?imgID=${a.id}" height=60 width=60/></button>
</c:forEach>
</body>
<script>
function setImage(src){
	parent.img.src = src;
}
</script>
</html>