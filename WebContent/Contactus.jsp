<html style="margin-left:10%;margin-right:10%;border:thin ;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<link rel="stylesheet" type="text/css" href="css/topbar.css" />
<link rel="stylesheet" type="text/css" href="css/searchbar.css" /> 
<title>Insert title here</title>
<style>
body {
    background-image: url("img/back.jpg");
    width:100%;
    height:100%;
    background-repeat: no-repeat;
    background-size: cover;
}
td.padding {
    padding-left: 10px;
}
</style>
</head>

<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="menu.jsp"/>
<body >

<div align="center"  style="color: white " >
<h2 >CONTACT US</h2><br>
<img src="img/contact.png" alt="contact us">
<form action="ContactusController" method="get">
<h3>How Can We Help You?</h3><br>
<table cellspacing="10" >
<tr>
<td colspan="3" height="100px" style="text-align: center; font-size: small; color: rgb(255, 164, 0);"><b>Name:</b></td><td height="100px" class="padding" ><input type="text" name="name" style="border:1px solid #a17878; height: 40px; width: 250px; color: black;"></td>
</tr>

<tr>
<td style="vertical-align: inherit; font-size: small;text-align: initial;" colspan="3">
<b style="color: white">Please write your comments/ Queries:</b></td>
<td class="padding" ><textarea name="message" rows="8" cols="50" style="backgroung-color:#EFF0F1; border:1px solid #a17878; color: #4dfb27;" >
</textarea>
</td>
</tr>

<tr><td height="100px" colspan="3" style="text-align: center; font-size: small; color: #4dfb27;"><b>Email:</b></td><td class="padding"><input type="text" name="email" style="border:1px solid #a17878; height: 40px; width: 250px;color: black;"></td></tr>

</table>

<input type="submit" value="Submit" class = "btn btn-md btn-success" style="left: 1%">
</form>
</div>

</body>
<jsp:include page="footer.jsp"/>
</html>