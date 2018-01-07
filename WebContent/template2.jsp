<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<title>Insert title here</title>
</head>
	<jsp:include page="template_nav.jsp"/>
	<div id="pageDirector">
	<table width=100% style="border:thin;border-spacing: 10px">
	<tr>
		<!-- <td align="center" style="padding: 2%"><button class="btn btn-success" onclick="location.href='add_text.jsp'">Add Text</button></td> -->
		<td align="center" style=" padding: 0px 5px 10px 5px;"><button class="btn btn-success" onclick="location.href='CategoriesServlet'"  >Add Art</button></td>
	</tr>
	<br>
	<bt>
	<%if(session.getAttribute("userId")!=null)
	{%>
	<tr>
		<td align="center" style=" padding: 10px 5px 20px 5px;"><button class="btn btn-success" onclick="location.href='templateupload.jsp'" >Add own Art!</button></td>
		<td><form></form></td>
	</tr>
	<%}else{%>
	<tr></tr>
	<%} %>
	<tr>
	<tr><td><br/><br/></td></tr>
	<tr>
	<td align="center">
	
	
	</td>
	<!-- <tr>
	<td align="center" style=" padding: 10px 5px 20px 5px;"><button class="btn btn-success" onclick="alert('Product added to cart')" >Add to cart!</button></td>
	</tr> -->
	</table>
	</div>
<script>
$(function(){ $('#addToCart').click(function(){html2canvas($('#productImage'),{
	onrendered: function(canvas){
		var imgData=canvas.toDataURL('image/png',1.0);
	}	
});
</script>
<script>
$(document).ready(function(){

	var quantitiy=0;
	   $('.quantity-right-plus').click(function(e){
	        
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        var quantity = parseInt($('#quantity').val());
	        
	        // If is not undefined
	            
	            $('#quantity').val(quantity + 1);

	          
	            // Increment
	        
	    });

	     $('.quantity-left-minus').click(function(e){
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        var quantity = parseInt($('#quantity').val());
	        
	        // If is not undefined
	      
	            // Increment
	            if(quantity>0){
	            $('#quantity').val(quantity - 1);
	            }
	    });
	    
	});
</script>
</html>