<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>
<style>

 tr{
 	border-bottom: 1px solid ;
 	margin-top:80px;
 	border-color: lightgrey;
	}
</style>
    
<body>
 <img src="image/MajorCreditCardIcons.jpg"  style="float: right; height:100%; width:50%; margin-top:px" />
 <div style="margin-top:60px; margin-left:150px" >
<h1>Select Card</h1>
 <div style="color:red; font-weight:bold;font-size:18px; margin-left:200px">${error}</div>
<form method="post" name="update" action="CardController" style="float: left">
<table  width=550px style="margin-top:20px; margin-left:10px" > 
<th>Your Credit and Debit cards</th>
<th>Name on card</th>
<th>Expires On</th>
				<c:forEach items="${eventId}" var="a">
					<tr>
						<td>
						<br>
							<li style="list-style-type: none;"><input type="radio" name="myradio"
								value="${a.cardNo}" /> Visa ending with ************<c:out value="${a.cardNo}" /> 
							</li><br>
						</td>
						<td>
						<br>
							<li style="list-style-type: none;"><c:out value="${a.cardName}" /> 
							</li><br>
						</td>
						<td>
						<br>
							<li style="list-style-type: none;"><c:out value="${a.expirationDateMonth}" />/<c:out value="${a.expirationDateYear}" /> 
							</li><br>
						</td>
					</tr>

				</c:forEach>
				</table>
				<div class="btn" >
				   <input type="submit"  style="margin-top:20px;margin-left:440px" class="btn btn-warning"  value="Continue Payment" name ="action"/>
                </div>
              </form>
                </div>
</body>
</html>