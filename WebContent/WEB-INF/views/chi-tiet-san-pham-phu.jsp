<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>Classic premium HTML5 &amp; CSS3 template</title>

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/revslider.css" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fancybox.css" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" media="all">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,500,300,700,900' rel='stylesheet' type='text/css'>

<fmt:setLocale value="vi-VN"/>

</head>

<body class="cms-index-index">
<div style="background-color: rgb(119, 119, 119); opacity: 0.7; cursor: pointer; height: 1024px; display: block;" id="fancybox-overlay"></div>
<div style="width: 1190px; height: auto; top: 20%; left: 27%; display: block;" id="fancybox-wrap">
  <div id="fancybox-outer">
    <div style="border-width: 10px; width: 1170px; height: auto;" id="fancybox-content"> <a href="trang-chu" style="display: inline;"></a>
      <div style="width:auto;height:auto;overflow: auto;position:relative;">
        <div class="product-view">
          <div class="product-essential">
            <form action="${pageContext.request.contextPath}/them-gio-hang" method="post" id="product_addtocart_form">
              <input name="idsp" value="${sp.id}" type="hidden">
              <div class="product-img-box col-sm-5 col-xs-12 bounceInRight animated">
                <div class="new-label new-top-left"></div>
                <div class="product-image">
                  <div class="large-image"> <a href="${pageContext.request.contextPath}/images/${sp.hinhAnh}" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20"> <img src="${pageContext.request.contextPath}/images/${sp.hinhAnh}" alt = "${pageContext.request.contextPath}/images/${sp.hinhAnh}"> </a> </div>
                </div>
                <!-- end: more-images --> 
              </div>
              <div class="product-shop col-sm-7 col-xs-12 bounceInUp animated">
                <div class="product-name">
                  <h1>${sp.tenSanPham}</h1>
                </div>
                <div class="short-description"> 
                  <!--<h2>Quick Overview</h2>-->
                  <p>${sp.moTa}</p>
                </div>
                <div class="price-block">
                  <div class="price-box">
                  	<fmt:formatNumber value="${sp.donGia}" type="number" var="donGia"/>
                    <p class="old-price"> <span class="price-label">Giá:</span> <span class="price"> ${donGia} đ </span> </p>
                    <fmt:formatNumber value="${sp.donGiaKM}" type="number" var="donGiaKM"/>
                    <p class="special-price"> <span class="price-label">Giá khuyến mãi</span> <span id="product-price-48" class="price"> ${donGiaKM} đ </span> </p>
                  </div>
                </div>
                <div class="add-to-box">
                  <div class="add-to-cart">
                    <label for="qty">Qty:</label>
                    <div class="pull-left">
                      <div class="custom pull-left">
                        <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="icon-plus">&nbsp;</i></button>
                        <input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
                        
                        <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="icon-minus">&nbsp;</i></button>
                      </div>
                    </div>
                      <button onClick="productAddToCartForm.submit(this)" class="button btn-cart" title="Thêm vào giỏ" type="submit"><span><i class="icon-basket"></i> Thêm vào giỏ</span></button>
                  </div>
                  
                </div>
              </div>
            </form>
          </div>
        </div>
        <!--product-view--> 
        
      </div>
    </div>
    <a style="display: inline;" id="fancybox-close" href="${pageContext.request.contextPath}/trang-chu"></a> </div>
</div>

<!-- JavaScript --> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/parallax.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-menu.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cloud-zoom.js"></script>
</body>

<!-- Tieu Long Lanh Kute -->
</html>
