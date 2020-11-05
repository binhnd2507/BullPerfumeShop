<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">

<!-- Tieu Long Lanh Kute -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons Icon -->
<link rel="icon" href="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico" type="image/x-icon" />
<title>Cửa hàng nước hoa</title>

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="all">
<link rel="stylesheet" type="text/css" href="css/animate.css" media="all">
<link rel="stylesheet" type="text/css" href="css/revslider.css" >
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.theme.css">
<link rel="stylesheet" type="text/css" href="css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/style.css" media="all">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900' rel='stylesheet' type='text/css'>

<!-- JavaScript --> 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<script type="text/javascript" src="js/parallax.js"></script> 
<script type="text/javascript" src="js/revslider.js"></script> 
<script type="text/javascript" src="js/common.js"></script> 
<script type="text/javascript" src="js/owl.carousel.min.js"></script> 
<script type="text/javascript" src="js/jquery.mobile-menu.min.js"></script> 
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script> 
<script type='text/javascript'>

jQuery(document).ready(function(){
jQuery('#rev_slider_4').show().revolution({
dottedOverlay: 'none',
delay: 5000,
startwidth: 1170,
startheight: 650,

hideThumbs: 200,
thumbWidth: 200,
thumbHeight: 50,
thumbAmount: 2,

navigationType: 'thumb',
navigationArrows: 'solo',
navigationStyle: 'round',

touchenabled: 'on',
onHoverStop: 'on',

swipe_velocity: 0.7,
swipe_min_touches: 1,
swipe_max_touches: 1,
drag_block_vertical: false,

spinner: 'spinner0',
keyboardNavigation: 'off',

navigationHAlign: 'center',
navigationVAlign: 'bottom',
navigationHOffset: 0,
navigationVOffset: 20,

soloArrowLeftHalign: 'left',
soloArrowLeftValign: 'center',
soloArrowLeftHOffset: 20,
soloArrowLeftVOffset: 0,

soloArrowRightHalign: 'right',
soloArrowRightValign: 'center',
soloArrowRightHOffset: 20,
soloArrowRightVOffset: 0,

shadow: 0,
fullWidth: 'on',
fullScreen: 'off',

stopLoop: 'off',
stopAfterLoops: -1,
stopAtSlide: -1,

shuffle: 'off',

autoHeight: 'off',
forceFullWidth: 'on',
fullScreenAlignForce: 'off',
minFullScreenHeight: 0,
hideNavDelayOnMobile: 1500,

hideThumbsOnMobile: 'off',
hideBulletsOnMobile: 'off',
hideArrowsOnMobile: 'off',
hideThumbsUnderResolution: 0,

hideSliderAtLimit: 0,
hideCaptionAtLimit: 0,
hideAllCaptionAtLilmit: 0,
startWithSlide: 0,
fullScreenOffsetContainer: ''
});
});

</script>

<script>
function themVaoGio(id, sl) {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			var s = this.responseText;
			var soMatHang = s.substring(0, s.indexOf(','));
			var tongTien = s.substring(s.indexOf(',') + 1, s.indexOf('/'));
			document.getElementById("soMatHangChinh").innerHTML = "Giỏ hàng (" + soMatHang + ")";
			document.getElementById("soMatHangPhu").innerHTML = soMatHang + " mặt hàng";
			document.getElementById("tongTien").innerHTML = tongTien + " vnđ"; 
		}
	};
	xhr.open("get", "them-gio-hang?idsp="+id+"&sl="+sl, true);
	xhr.send();
}
function xoaSanPham(id) {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			var s = this.responseText;
			var tongTien = s.substring(0, s.indexOf(','));
			var soMatHang = s.substring(s.indexOf(',') + 1, s.indexOf(';'));
			var idsp = s.substring(s.indexOf(';') + 1);
			document.getElementById("soMatHangChinh").innerHTML = "Giỏ hàng (" + soMatHang + ")";
			document.getElementById("soMatHangPhu").innerHTML = soMatHang + " mặt hàng";
			document.getElementById("tongTien").innerHTML = tongTien + " vnđ"; 
			document.getElementById("tongCong").innerHTML = tongTien + " vnđ";
			document.getElementById("thanhTien").innerHTML = tongTien + " vnđ";
			document.getElementById(idsp).style.display = "none";
		}
	};
	xhr.open("get","xoa-san-pham?idsp="+id);
	xhr.send();
}
function phanTrang(trang) {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("phanTrangCuaHang").innerHTML = this.responseText;
		}
	};
	xhr.open("get", "phan-trang-cua-hang?trang="+trang);
	xhr.send();
}
function phanTrangTheoLoai(idLoai, trang) {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("phanTrangCuaHang").innerHTML = this.responseText;
		}
	};
	xhr.open("get", "phan-trang-cua-hang-theo-loai?idLoai="+idLoai+"&trang="+trang);
	xhr.send();
}
function phanTrangTheoLoaiThuongHieu(idLoai, idThuongHieu, trang) {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("phanTrangCuaHang").innerHTML = this.responseText;
		}
	};
	xhr.open("get", "phan-trang-cua-hang-theo-loai-thuong-hieu?idLoai="+idLoai+"&idThuongHieu="+idThuongHieu+"&trang="+trang);
	xhr.send();
}
</script>
</head>

<tiles:insertAttribute name="dauTrang"/>
<tiles:insertAttribute name="thucDon"/>
<tiles:insertAttribute name="tieuDeCuaHang"/>
<tiles:insertAttribute name="noiDung"/>
<tiles:insertAttribute name="chinhSach"/>
<tiles:insertAttribute name="thuongHieu"/>
<tiles:insertAttribute name="cuoiTrang"/>
