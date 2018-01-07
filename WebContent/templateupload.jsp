<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<title>Insert title here</title>
</head>
	<jsp:include page="template_nav.jsp"/>
	<div id="pageDirector">
	<form action="templateController?action=uploadtemplate" method="post" enctype="multipart/form-data">
			<div class="product_preview_container">
			<table width="100%">
			<tr>	
			<td width="50%" align="left" >
			
			<div class="list-group" height="100%">
				<div id="pageDirector">
	<table width=100%  align="right">
	
	<tr>
		<td align="center">
		<form action="templateController?action=uploadtemplate" method="post" enctype="multipart/form-data">
		<input class="btn btn-default" type="file" name="file" size="50" /><br/><input class="btn btn-blue" type="submit" value="upload!" />
		<!--<button class="btn btn-success">Add own Art!</button>-->
		</form>
		</td>
		
	</tr>
	</table>
	</div>
			</div>
			</table>
			</div>
  		<input type="hidden" name="productId" value="${a.id}" /> 
	</form>
	<table width="100%">
	<tr><td align="center" style="position:absolute;left:30%"><form action="templateController?action=viewtemp" method="post">
  	<input class="btn btn-primary" style="position:absolute;align:center" type="submit" name="submit" value="Your Templates">
 	</form></td></tr></table>
	
	</div>

</html>
