<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%session.setAttribute("size", request.getParameter("getSize"));
session.setAttribute("quantity",request.getParameter("getQuantity"));
session.setAttribute("productName",request.getParameter("productName"));
session.setAttribute("price",request.getParameter("price"));%>

<html style="margin-left:10%;margin-right:10%;border:thin ;box-shadow: 12px 0 15px -4px #888888, -12px 0 8px -4px #888888;">
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.plugin.html2canvas.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
<head>
<jsp:include page="LoginRegisterDisplay.jsp"/>
<jsp:include page="menu.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head> 
<body>
<table style="width:80%;height:70%;">
<tr>
<td align="center" style="padding-left: 20px;">
<c:forEach var="a" items="${viewProduct}" >
<div id	="productImage" style="width:300px; height:400px">
<div style="background:url('imageViewer.jsp?imgID=${a.id}'); background-repeat:no-repeat; background-size: 300px 400px">
<canvas  style="z-index:10;" id="canvas" width="150px" height="400px">
</canvas>
</div>
</div>
</c:forEach>
</td>
<td align="center" style="margin-top:-10px" >
<iframe src="template2.jsp" width=-70% height=70% style="margin-top:-20%">
</iframe></td>

</tr>
<tr>
<td></td>
<td>
</td>
</tr>
</table>
<textarea style="width:80%;height:20%;align:center;margin-left:10%;margin-right: 10%">Welcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]'s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.

The term '[business name]' or 'us' or 'we' refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term 'you' refers to the user or viewer of our website.

The use of this website is subject to the following terms of use:

The content of the pages of this website is for your general information and use only. It is subject to change without notice.
This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, the following personal information may be stored by us for use by third parties: [insert list of information].
Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.
Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.
This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.
All trade marks reproduced in this website which are not the property of, or licensed to, the operator are acknowledged on the website.
Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.
From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).
Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Northern Ireland, Scotland and Wales.</textarea>
<br/><br/><table style="width:100%" ><tr><td align="center"><button class="btn btn-success"onclick="capture();">I Agree</button>
<button onclick="exit();" class="btn btn-default">I Disagree</button><br/><br/></td></tr>
<tr><td align="center" ><c:forEach var="a" items="${viewProduct}"><form  method="POST" action="AddtoCart?pid=${a.id}" id="myForm" >
    <input type="hidden" id="img_value" name="img_val" />
    <input class="btn btn-primary" id="add" type="submit" value="Add to Cart" disabled/>
</form></c:forEach></td></tr>	
</table>
</body>

<script type="text/javascript">
function exit(){
	alert("You will be directed to home page");
	location.href="index.jsp";
}
function capture() {
	document.getElementById('add').disabled=false;
	var target = document.getElementById('productImage');
    html2canvas(target,{ 
        onrendered: function (canvas) {
            //Set hidden field's value to image data (base-64 string)
            $('#img_value').val(canvas.toDataURL('image/png'));
            //Submit the form manually    
        }
    });
    
}
var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");

var canvasOffset = $("#canvas").offset();
var offsetX = canvasOffset.left;
var offsetY = canvasOffset.top;

var startX;
var startY;
var isDown = false;


var pi2 = Math.PI * 2;
var resizerRadius = 8;

var rr = resizerRadius * resizerRadius;
var draggingResizer = {
    x: 0,
    y: 0
};
var imageX = 50;
var imageY = 50;
var imageWidth, imageHeight, imageRight, imageBottom;
var draggingImage = false;
var startX;
var startY;
var img = new Image();

img.onload = function () {
    imageWidth = 30;
    imageHeight = 30;
    imageRight = imageX + imageWidth;
    imageBottom = imageY + imageHeight;
    draw(true, false);
}

img.src = "";


function draw(withAnchors, withBorders) {

    // clear the canvas
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    // draw the image
    ctx.drawImage(img, 0, 0, img.width, img.height, imageX, imageY, imageWidth, imageHeight);

    // optionally draw the draggable anchors
    if (withAnchors) {
        drawDragAnchor(imageX, imageY);
        drawDragAnchor(imageRight, imageY);
        drawDragAnchor(imageRight, imageBottom);
        drawDragAnchor(imageX, imageBottom);
    }

    // optionally draw the connecting anchor lines
    if (withBorders) {
        ctx.beginPath();
        ctx.moveTo(imageX, imageY);
        ctx.lineTo(imageRight, imageY);
        ctx.lineTo(imageRight, imageBottom);
        ctx.lineTo(imageX, imageBottom);
        ctx.closePath();
        ctx.stroke();
    }

}

function drawDragAnchor(x, y) {
    ctx.beginPath();
    ctx.arc(x, y, resizerRadius, 0, pi2, false);
    ctx.closePath();
}

function anchorHitTest(x, y) {

    var dx, dy;

    // top-left
    dx = x - imageX;
    dy = y - imageY;
    if (dx * dx + dy * dy <= rr) {
        return (0);
    }
    // top-right
    dx = x - imageRight;
    dy = y - imageY;
    if (dx * dx + dy * dy <= rr) {
        return (1);
    }
    // bottom-right
    dx = x - imageRight;
    dy = y - imageBottom;
    if (dx * dx + dy * dy <= rr) {
        return (2);
    }
    // bottom-left
    dx = x - imageX;
    dy = y - imageBottom;
    if (dx * dx + dy * dy <= rr) {
        return (3);
    }
    return (-1);

}


function hitImage(x, y) {
    return (x > imageX && x <(imageX + imageWidth) && y > imageY && y < (imageY + imageHeight));

}


function handleMouseDown(e) {
    startX = parseInt(e.clientX - offsetX);
    startY = parseInt(e.clientY - offsetY);
    draggingResizer = anchorHitTest(startX, startY);
    draggingImage = draggingResizer < 0 && hitImage(startX, startY);
}

function handleMouseUp(e) {
    draggingResizer = -1;
    draggingImage = false;
    draw(true, false);
}

function handleMouseOut(e) {
    handleMouseUp(e);
}

function handleMouseMove(e) {

    if (draggingResizer > -1) {

        mouseX = parseInt(e.clientX - offsetX);
        mouseY = parseInt(e.clientY - offsetY);

        // resize the image
        switch (draggingResizer) {
            case 0:
                //top-left
                imageX = mouseX;
                imageWidth = imageRight - mouseX;
                imageY = mouseY;
                imageHeight = imageBottom - mouseY;
                break;
            case 1:
                //top-right
                imageY = mouseY;
                imageWidth = mouseX - imageX;
                imageHeight = imageBottom - mouseY;
                break;
            case 2:
                //bottom-right
                imageWidth = mouseX - imageX;
                imageHeight = mouseY - imageY;
                break;
            case 3:
                //bottom-left
                imageX = mouseX;
                imageWidth = imageRight - mouseX;
                imageHeight = mouseY - imageY;
                break;
        }

        if(imageWidth<25){imageWidth=25;}
        if(imageHeight<25){imageHeight=25;}

        // set the image right and bottom
        imageRight = imageX + imageWidth;
        imageBottom = imageY + imageHeight;

        // redraw the image with resizing anchors
        draw(true, true);

    } else if (draggingImage) {

        imageClick = false;

        mouseX = parseInt(e.clientX - offsetX);
        mouseY = parseInt(e.clientY - offsetY);

        // move the image by the amount of the latest drag
        var dx = mouseX - startX;
        var dy = mouseY - startY;
        imageX += dx;
        imageY += dy;
        imageRight += dx;
        imageBottom += dy;
        // reset the startXY for next time
        startX = mouseX;
        startY = mouseY;

        // redraw the image with border
        draw(false, true);

    }


}


$("#canvas").mousedown(function (e) {
    handleMouseDown(e);
});
$("#canvas").mousemove(function (e) {
    handleMouseMove(e);
});
$("#canvas").mouseup(function (e) {
    handleMouseUp(e);
});
$("#canvas").mouseout(function (e) {
    handleMouseOut(e);
});
</script>
</html>

