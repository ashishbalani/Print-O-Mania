<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script type="text/javascript">
 $(document).ready(function() 
		    { 
		        $("#myTable").tablesorter(); 
		    } 
		); 
    </script>
<script type="text/javascript" src="/Admin/js/tabledata.js" ></script> 

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Admin/css/tabledata.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/demo.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/tabs.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/topbar.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/searchbar.css" /> 

</head>
<body>
<div class="content">
   
<jsp:include page="Adminheader.jsp"/>
 <jsp:include page="AdminLoginRegisterDisplay.jsp"/>
 <p style="color:black;font-size: 25px;text-align: center;">${error}</p>
 <form >
<table border="1px"  style = "color:black" cellspacing="0" width="75%" align="center" id="myTable" class="tablesorter">
                                            	<thead>
                                                <tr bgcolor="blue" style="color:white">
                                                    <th >Product Type</th>
                                                    <th >Product Name</th>
                                                    <th>Quantity</th>
                                                    <th>Size</th>
                                                    <th>Price</th>
                                                    <th >Created Date</th>
                                                    <th>Product</th>
                                                    <th>Send Email</th>
                                                    <th>Action</th>
                                                </tr>
											</thead>
											<tbody>
                                            <c:forEach var="i" items="${AdminProducts}">
                                                <tr>
                                                    <td><c:out value="${i.type}"/></td>
                                                    <td><c:out value="${i.name}" /></td>
                                                    <td><c:out value="${i.quantity}" /></td>
                                                    <td><c:out value="${i.size}" /></td>
                                                    <td><c:out value="${i.price}" /></td>
                                                    <td><c:out value="${i.createdDate}" /></td>
                                                    <td><img class="product_image" src="imageViewer.jsp?imgID=${i.id}" height=75px width=75px/></td>
                                                    <td><a href="<%=request.getContextPath() %>/AdminController?action=Mail&id=${i.id}">Mail</a></td>
                                                    
                                          			<td><a href="<%=request.getContextPath() %>/AdminController?action=delete&id=${i.id}">Delete</a></td>
                                           </tr>
                                                </c:forEach>
                                        </tbody>
                                        </table>
                                        </form>
 
  </div>
  <footer class="footer"><jsp:include page="Adminfooter.jsp"/></footer>

</body>
</html>