<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin-left:10%;margin-right:10%">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<jsp:include page="LoginRegisterDisplay.jsp"/>	
<jsp:include page="menu.jsp"/>
<style type="text/css">
 table, td, th {    
    
}

.demo1{
    border-collapse: collapse;
    width: 50%;
    border: 1px solid black;
    text-align: left;
}

.demo2 {
    padding: 15px;
}
</style>
</head>
<body>
 <div style="min-height: 505px";>

 <div style="color:red; font-weight:bold;font-size:18px; margin-left:200px">${error}</div>

	<form action="OrderController"  method="post">
			<table width=15% align="center" style="border: solid 1px black;" class="demo1">
			<h1><b>Summary Of Order Details</b></h1>
			<tr class="demo2">
			<td style="border: solid 1px;" class="demo2">
			Number Of Items:</td><td style="border: solid 1px;"  class="demo2">${quantity}<br><br></td></tr>
			
			<tr class="demo2">
			<td style="border: solid 1px;" class="demo2">
			Delivery Charge:</td><td style="border: solid 1px;" class="demo2">0<br><br></td></tr><br>
			<tr class="demo2">
			<td style="border: solid 1px;" class="demo2">
			Order Total:</td><td style="border: solid 1px;" class="demo2">${total}<br><br></td></tr><br>
			<tr class="demo2">
			<td style="border: solid 1px;" class="demo2">
			Enter CVV 
			</td>
			<td style="border: solid 1px;" class="demo2">
  			<input type="password"  style="height:30px; width:40px; font-weight:bold; border-color: blue; align="Center" name="cvv"  placeholder="cvv"/></td></tr>
  			<tr class="demo2">
  			<td colspan="2 class="demo2""><input type="submit" name="action" value="Pay" class="btn btn-success"/></td>
				</tr>
    			
	
			</table>
<%--   		<input type="hidden" name="productId" value="${a.id}" /> 
 --%>	</form>
 </div>
 <div class="push"></div>
<div class="footer">
	<jsp:include page="footer.jsp"/>
</div>
</body>
</html>