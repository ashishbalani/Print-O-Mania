<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<style>

th, td {
    padding: 10px;
    text-align: left;
}

input[type=text] ,select{
    width: 100%;
    padding: 10px 15px;
    margin: 5px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 3px solid #555;
}
</style>
</head>
<body>
<div class="content">
   
<jsp:include page="Adminheader.jsp"/>
 <jsp:include page="AdminLoginRegisterDisplay.jsp"/>
<form action="AddProductController" method="post" enctype="multipart/form-data">
				
				<table>
				<tr>
				<td style="color:black">Name</td>
				<td>
				<input type="text" name="productname" >
				</td>
                <td>
                <tr>
                <td style="color:black">Product Type</td>
                <td><select name = "category">
                <option>Select anyone from below!</option>
                <option value = "poster">Poster</option>
                <option value = "mug">Mugs</option>
                <option value = "hoodies">Hoodies</option>
                <option value = "tshirts">T-shirt</option>
                <option value = "tanktop">TankTop</option>
                </td>
                </tr>
                
                
                <tr>
                <td style="color:black">Quantity</td>
                <td><input type="text" name="Qunatity" ></td>
                </tr>
                
                <tr>
                <td style="color:black">Size</td>
                <td><select name = "size">
                <option>Select anyone from below!</option>
                <option value = "S">S</option>
                <option value = "M">M</option>
                <option value = "L">L</option>
                <option value = "XL">XL</option>
                
                </td>
                </tr>
                
                <tr>
                <td style="color:black">Price</td>
                <td><input type="text" name="Price" placeholder="example: 25"></td>
                </tr>
                
                <tr>
                <td style="color:black">Product Iamge</td>
                <td><input type="file" name="file" ></td>
                </tr>
                </table>
                                
                
				
                <input type="submit" value="upload" class="button" style="left: 1%">
				
            </form>
            </div>
  <footer class="footer"><jsp:include page="Adminfooter.jsp"/></footer>
            
</body>
</html>