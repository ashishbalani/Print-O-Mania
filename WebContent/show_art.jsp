<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<jsp:include page="template_nav.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <c:forEach var="image" items="${images}">
	    <button onclick="setImage('${image}')"><img src="./templates/${image}" width="60" height="60"/></button>  
	    
	   </c:forEach>
</body>
<script>
function setImage(image){
	parent.img.src = "./templates/"+image;
}
</script>
</html>