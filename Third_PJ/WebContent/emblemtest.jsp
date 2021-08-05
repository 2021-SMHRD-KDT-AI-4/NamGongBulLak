<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div, img{
	width: 250px;
	height: 250px;
}
.class{
	float: left;
}
#p_header{
	width: 800px;
	height: 270px;
}
#p_middle1, #p_middle2{
	width: 800px;
	height: 270px;
}
</style>
</head>
<body>
<div id="p_header">
<div class="header" style="float: left;"><img id="header_img1" src="img/img3.png" onclick="removeimg1()"></div>
<div class="header" style="float: left;"><img id="header_img2" src="" onclick="removeimg2()"></div>
<div class="header" style="float: left;"><img id="header_img3" src="" onclick="removeimg3()"></div>
</div>
<div id="p_middle2">
<div style="float: left;"><img id="img1" src="img/11.png" onclick="insert_img1()"></div>
<div style="float: left;"><img id="img2" src="img/img1.png" onclick="insert_img2()"></div>
<div style="float: left;"><img id="img3" src="img/img2.png" onclick="insert_img3()"></div>
</div>
<div id="p_middle2">
<div style="float: left;"><img id="img4" src="img/img3.png" onclick="insert_img4()"></div>
<div style="float: left;"><img id="img5" src="img/img4.png" onclick="insert_img5()"></div>
<div style="float: left;"><img id="img6" src="img/img5.png" onclick="insert_img6()"></div>
</div>


<script src="js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

var a1 = 0;
var a2 = 0;
var a3 = 0;

var src1 = jQuery('#header_img1').attr("src");
var src2 = jQuery('#header_img2').attr("src");
var src3 = jQuery('#header_img3').attr("src");

if(src1==""){
	a1=1;
}
if(src2==""){
	a2=1;
}
if(src3==""){
	a3=1;
}

var img_src1 = jQuery('#img1').attr("src");
var img_src2 = jQuery('#img2').attr("src");
var img_src3 = jQuery('#img3').attr("src");
var img_src4 = jQuery('#img4').attr("src");
var img_src5 = jQuery('#img5').attr("src");
var img_src6 = jQuery('#img6').attr("src");


function removeimg1(){
	jQuery('#header_img1').removeAttr("src");
	a1 =1;
}
function removeimg2(){
	jQuery('#header_img2').removeAttr("src");
	a2=1;
}
function removeimg3(){
	jQuery('#header_img3').removeAttr("src");
	a3=1;
}


function insert_img1(){
	if(a1==1){
		a1=0;
		jQuery('#header_img1').attr("src",img_src1);
	}else if(a2==1){
		a2=0;
		jQuery('#header_img2').attr("src",img_src1);
	}else if(a3==1){
		a3=0;
		jQuery('#header_img3').attr("src",img_src1);
	}
}

function insert_img2(){
	if(a1==1){
		a1=0;
		jQuery('#header_img1').attr("src",img_src2);
	}else if(a2==1){
		a2=0;
		jQuery('#header_img2').attr("src",img_src2);
	}else if(a3==1){
		a3=0;
		jQuery('#header_img3').attr("src",img_src2);
	}
}
function insert_img3(){
	if(a1==1){
		a1=0;
		jQuery('#header_img1').attr("src",img_src3);
	}else if(a2==1){
		a2=0;
		jQuery('#header_img2').attr("src",img_src3);
	}else if(a3==1){
		a3=0;
		jQuery('#header_img3').attr("src",img_src3);
	}
}
function insert_img4(){
	if(a1==1){
		a1=0;
		jQuery('#header_img1').attr("src",img_src4);
	}else if(a2==1){
		a2=0;
		jQuery('#header_img2').attr("src",img_src4);
	}else if(a3==1){
		a3=0;
		jQuery('#header_img3').attr("src",img_src4);
	}
}
function insert_img5(){
	if(a1==1){
		a1=0;
		jQuery('#header_img1').attr("src",img_src5);
	}else if(a2==1){
		a2=0;
		jQuery('#header_img2').attr("src",img_src5);
	}else if(a3==1){
		a3=0;
		jQuery('#header_img3').attr("src",img_src5);
	}
}
function insert_img6(){
	if(a1==1){
		a1=0;
		jQuery('#header_img1').attr("src",img_src6);
	}else if(a2==1){
		a2=0;
		jQuery('#header_img2').attr("src",img_src6);
	}else if(a3==1){
		a3=0;
		jQuery('#header_img3').attr("src",img_src6);
	}
}



</script>
</body>
</html>