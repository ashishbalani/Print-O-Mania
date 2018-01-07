<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
                                                    <th >User Id</th>
                                                    <th >Product Id</th>
                                                    <th>Product Name</th>
                                                    <th>Quantity</th>
                                                    <th>Size</th>
                                                    <th>Price</th>
                                                    <th>Order Date</th>
                                                    <th>Product</th>
                                                    <th>Current Status</th>
                                                    <th>Update Status</th>
                                                </tr>
											</thead>
											<tbody>
                                            <c:forEach var="a" items="${orders}">
                                                <tr>
                                                    <td><c:out value="${a.userId}"/></td>
                                                    <td><c:out value="${a.productId}" /></td>
                                                    <td><c:out value="${a.name}" /></td>
                                                    <td><c:out value="${a.quantity}" /></td>
                                                    <td><c:out value="${a.size}" /></td>
                                                    <td><c:out value="${a.price}" /></td>
                                                    <td><c:out value="${a.purchaseDate}" /></td>
                                                    <td><img class="product_image" src="orderImageViewer.jsp?imgID=${a.productId}" height=75px width=75px/></td>
                                                      <td><c:out value="${a.orderStatus}" /></td>
                                                     <td><a href ="AdminController?productId=${a.productId}&&quantity=${a.quantity}&&action=updateOrder&&status=Packed" >Packed</a> <a href ="AdminController?productId=${a.productId}&&quantity=${a.quantity}&&action=updateOrder&&status=Delivered">Delivered</a> 
                                                    </td>
                                           </tr>
                                                </c:forEach>
                                        </tbody>
                                        </table>
                                        </form>
 
  </div>
  <footer class="footer"><jsp:include page="Adminfooter.jsp"/></footer>


</body>
</html>