<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Admin/css/demo.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/tabs.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/topbar.css" />
<link rel="stylesheet" type="text/css" href="Admin/css/searchbar.css" /> 

</head>
<body>

<!-- <div id="id01" class="modal"/>
 -->
 <div class="content">
   
<jsp:include page="Adminheader.jsp"/>
 <jsp:include page="AdminLoginRegisterDisplay.jsp"/>
 <form >
<table border="1px"  style = "color:black" cellspacing="0" width="75%" align="center">
                                            
                                                <tr bgcolor="blue" style="color:white">
                                                    <th>User Id</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>Email Id</th>
                                                   
                                                    <th>Action</th>
                                                </tr>

                                            <c:forEach var="i" items="${userdata}">
                                                <tr>
                                                    <td><c:out value="${i.userId}"/></td>
                                                    <td><c:out value="${i.fname}" /></td>
                                                    <td><c:out value="${i.lname}" /></td>
                                                    <td><c:out value="${i.emailId}" /></td>
                                                    
                                                    
                                          			<td><a href="<%=request.getContextPath() %>/SigninController?signin=Delete&id=${i.userId}">Delete</a></td>
                                           </tr>
                                                </c:forEach>
                                        </table>
                                        </form>
 
  </div>
  <footer class="footer"><jsp:include page="Adminfooter.jsp"/></footer>

</body>
</html>