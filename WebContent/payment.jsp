<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
</head>

<body>
 <img src="image/MajorCreditCardIcons.jpg"  style="float: right; height:100%; width:50%; margin-top:px" />
 <div style="margin-top:60px; margin-left:150px" >
<h1>Enter Shipping Address</h1>
<form method="post" name="update" action="UpdateController" style="float: left">
<table  width=550px style="margin-top:20px; margin-left:10px" > 
<tr>
<td>
                <div style="color:black; font-size:20px;font-weight:bold">Address:</td><td><textarea rows="5" cols="32"  style=" font-weight:bold"  name="address"  placeholder="address" >${address}</textarea></div>
                </td></tr>
                </table>
                <div class="btn" >
				   <input type="submit"  style="margin-top:20px; margin-left:135px" class="btn btn-warning"  value="Ship to this Address" name ="action"/>
                </div>
              </form>
              
<h1 style="float: left; margin-top:60px;">Enter Card Details </h1>
<div style="color:red; font-weight:bold;font-size:20px; margin-left:50px; float:left">${success}</div>
 <div style="color:red; font-weight:bold;font-size:20px; margin-left:50px; float:left">${error}</div>
<form method="post" name="update" action="CardController" style="float: left">
<table width=80%  style="margin-top:10px; margin-left:10px" > 
<tr>

<td height=60px>
               <div style="color:black; font-weight:bold ; font-size:20px" >Name on card:</td><td><input type="text"  style="height:30px; font-weight:bold;" name="cardName"  placeholder="name"/></div>
                </td></tr>
                <tr>
<td height=60px>
               <div style="color:black; font-weight:bold; font-size:20px">Card Number:</td><td><input type="text"  style="height:30px; font-weight:bold;" name="cardNo"  placeholder="card number"/></div>
                </td></tr>
                <tr>
<td height=60px>
<!--  Expiration Date:<input type="text" name="calendar" id="datepicker">

 -->               <div style="color:black; font-weight:bold; font-size:20px">Expiration Date:</td><td><input type="text"  style="height:30px; width:40px; font-weight:bold;" name="expirationDateMonth"  placeholder="mm"/><input type="text"  style="height:30px; width:50px; margin-left:20px;font-weight:bold;" name="expirationDateYear"  placeholder="yyyy"/></div>
    
              </td></tr>
			  <!--   <label for="startDate">Expiration Date :</label>
			    <input name="startDate" id="startDate" class="date-picker" />  -->
    </td></tr>
     <tr>
                <td>  <div style="color:black; font-weight:bold; font-size:20px">Do you want to add your card for future use?</td>
                <td><select name = "card">
                <option>Select anyone from below!</option>
                <option value = "Y">Yes</option>
                <option value = "N">No</option>
              
                
                </td>
                </tr>
</table>
                <!-- <div class="btn" >
				   <input type="submit"  style="margin-top:20px; margin-left:135px" class="btn btn-warning"  value="Add you card" name ="action"/>
                </div> -->
                	<div  >
				   <input type="submit"  style="margin-top:20px;margin-left:135px" class="btn btn-warning"  value="Continue" name ="action"/>
                </div>
              </form>
              </div>

</body>
</html>