<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="template_nav.jsp"/>
<%--    <jsp:include page="product_template_view.jsp">

        <jsp:param name="param1" value="${image}"/>


    </jsp:include> --%>

<div>
<form class="form-group"  method="post">
<ul style="list-style:none;">
	
	  <c:forEach var="l" items="${list}">
	    <a href="ImagesServlet?item=${l}">  <li><c:out value="${l}" /></li></a>
	   </c:forEach>
	   
	 </ul>
	 <div  style="width='100px'">
        <c:forEach var="image" items="${images}">
<%--         <a href="product_template_view.jsp?image=${image}">
 --%>	     <img src="./templates/${image}" width="60" height="60"/>  
	   </c:forEach>
      </div>
</form>
</div>
<script type="text/javascript">
	var iframe=parent.document.getElementById("productImage");
	iframe.contentWindow.location.replace("product_template_view.jsp");
</script>
</html>