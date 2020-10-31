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
</head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body class="cms-index-index cms-home-page">
<div id="page"> 
  <!-- Header -->
  <header>
    <div class="header-container">
      <div class="container">
        <div class="row">
          <div class="col-sm-3 col-xs-12"> 
            <!-- Header Logo -->
            <div class="logo"><a title="Bull Perfume" href="trang-chu"><img alt="Bull Perfume" src="images/logo.png"></a></div>
            <!-- End Header Logo --> 
          </div>
          <div class="col-lg-9 col-xs-12 right_menu">
            <div class="toplinks"> 
              <!-- Default Welcome Message -->
              <div class="welcome-msg hidden-xs">Xin chào! ${sessionScope.nd.hoTen}</div>
              <!-- End Default Welcome Message -->
              <div class="links">
                <div class="myaccount"><a title="" href="gio-hang"><span class="hidden-xs">Giỏ hàng của tôi</span></a></div>
                <div class="check"><a title="" href="thanh-toan"><span class="hidden-xs">Thanh toán</span></a></div>
                <div class="login"><a href="dang-xuat"><span class="hidden-xs">Đăng xuất</span></a></div>
              </div>
              <!-- links --> 
            </div>
            
            <!-- Search-col -->
            <div class="search-box pull-right">
              <form action="tim-kiem-san-pham" method="POST" id="search_mini_form" name="Categories">
                <input type="text" placeholder="Tìm kiếm sản phẩm..." value="" maxlength="70" name="timKiem" id="search">
                <button type="submit" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </form>
            </div>
            <!-- End Search-col --> 
          </div>
        </div>
      </div>
    </div>
   </header>
   <!-- end header -->
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

  <div class="mm-toggle-wrap">
    <div class="mm-toggle"><i class="icon-align-justify"></i><span class="mm-label">Menu</span> </div>
  </div>
  <!-- Navbar -->
  <nav>
    <div class="container">
      <div class="row">
        <div class="nav-inner col-lg-12">
          <ul id="nav" class="hidden-xs">
            <li class="level0 parent drop-menu">
            	<a href="trang-chu"><span>Trang chủ</span></a>
            </li>
            <li class="level0 parent drop-menu"><a href="cua-hang"><span>Cửa hàng</span></a>
              <ul class="level1">
	              <c:forEach items="${dsl}" var="l">
	                <li class="level1 first"><a href="cua-hang-theo-loai?idLoai=${l.id}"><span>${l.tenLoai}</span></a></li>
	              </c:forEach>  
              </ul>
            </li>
            <li class="mega-menu">
            	<a href="gio-hang" class="level-top"><span>Giỏ hàng</span></a>
            </li>
            <li class="mega-menu">
            	<a class="level-top" href="thanh-toan"><span>Thanh toán</span></a>
            </li>
            <li class="level0 nav-8 level-top">
            	<a href="lien-he" class="level-top"><span>Liên hệ</span></a>
            </li>
          </ul>
          <div class="menu_top">
            <div class="top-cart-contain pull-right"> 
              <!-- Top Cart -->
              <div class="mini-cart">
                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"><a href="#"><span class="hidden-xs" id="soMatHangChinh">Giỏ hàng (${sessionScope.gioHang.soMatHang()})</span></a></div>
                <div>
	                <div class="top-cart-content" style="display: none; width: 350px;">
	                    <div class="block-subtitle">
	                      <div class="top-subtotal">
	                      	<strong id="soMatHangPhu"> ${sessionScope.gioHang.soMatHang()} mặt hàng </strong>
	                      	<fmt:formatNumber value="${sessionScope.gioHang.tongTien()}" type="number" var="tongTien"></fmt:formatNumber>
	                      	<span class="price" id="tongTien">${tongTien} vnđ</span> 
	                      </div>
	                      <!--top-subtotal-->
	                      <div class="pull-right">
	                        <a href="gio-hang"><button title="Xem giỏ hàng" class="view-cart"><span>Xem giỏ hàng</span></button></a>
	                      </div>
	                      <!--pull-right--> 
	                    </div>
	                    <div class="actions">
	                      <a class="btn-checkout" title="Thanh toán" type="button" href="thanh-toan" style="text-align: center;"><span>Thanh toán</span></a>
	                    </div>
	                    <!--actions--> 
	                </div>
                </div>
              </div>
              <!-- Top Cart -->
              <div id="ajaxconfig_info" style="display:none"><a href="#/"></a>
                <input value="" type="hidden">
                <input id="enable_module" value="1" type="hidden">
                <input class="effect_to_cart" value="1" type="hidden">
                <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
  <!-- end nav --> 
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setLocale value="vi-VN" />
<!-- Breadcrumbs -->
  <div class="breadcrumbs bounceInUp animated">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="home"> <a title="Đi đến trang chủ" href="trang-chu">Trang chủ</a><span>» </span></li>
            <li class="category13"> <a title="Đi đến trang cửa hàng" href="cua-hang"><strong>Cửa hàng</strong></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
  <!-- Main Container -->
  <section class="main-container col2-left-layout bounceInUp animated">
  <div class="page-header">
  	<div class="container">
  		<div class="row">
  			<div class="col-xs-12">
              <h2>Cửa Hàng</h2>
            </div>
        </div>
    </div>
  </div> 
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi-VN" />    
    
    <div class="container" id="phanTrangCuaHang">
      <div class="row">
        <div class="col-main col-sm-9 col-sm-push-3">
          <article class="col-main">
            
            <div class="toolbar">
              <div id="sort-by">
                <label class="left">Sort By: </label>
                <ul>
                  <li><a href="#">Position<span class="right-arrow"></span></a>
                    <ul>
                      <li><a href="#">Name</a></li>
                      <li><a href="#">Price</a></li>
                      <li><a href="#">Position</a></li>
                    </ul>
                  </li>
                </ul>
                <a class="button-asc left" href="#" title="Set Descending Direction"><span class="glyphicon glyphicon-arrow-up"></span></a> </div>
    <div class="pager">
                <div class="pages">
                  <label></label>
                  <ul class="pagination">
                  
                   <c:if test="${tongSoTrang > 1}">
                  		<c:if test="${!empty param.idLoai && empty param.idThuongHieu}">
	                    	<li><a href="javascript:phanTrangTheoLoai('${param.idLoai}','${(trang - 1) > 0 ? trang - 1 : 1}');">&laquo;</a></li>
	                    </c:if>
	                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
	                    	<li><a href="javascript:phanTrangTheoLoaiThuongHieu('${param.idLoai}','${param.idThuongHieu}','${(trang - 1) > 0 ? trang - 1 : 1}');">&laquo;</a></li>
	                    </c:if>
	                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
	                    	<li><a href="javascript:phanTrang('${(trang - 1) > 0 ? trang - 1 : 1}');">&laquo;</a></li>
	                    </c:if>
	                    
                  	    <c:forEach var="i" begin="${viTriDau}" end="${viTriCuoi}" step="1">
		                  	<c:if test="${i == trang}">
		                  		<c:if test="${!empty param.idLoai && empty param.idThuongHieu}">
			                    	<li><a href="javascript:phanTrangTheoLoai('${param.idLoai}','${i}');" style="color: red; background-color: bisque;">${i}</a></li>
			                    </c:if>
			                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
			                    	<li><a href="javascript:phanTrangTheoLoaiThuongHieu('${param.idLoai}','${param.idThuongHieu}','${i}');" style="color: red; background-color: bisque;">${i}</a></li>
			                    </c:if>
			                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
			                    	<li><a href="javascript:phanTrang('${i}');" style="color: red; background-color: bisque;">${i}</a></li>
			                    </c:if>
			                </c:if>
			                <c:if test="${i != trang}">
			                	<c:if test="${!empty param.idLoai && empty param.idThuongHieu}">
			                    	<li><a href="javascript:phanTrangTheoLoai('${param.idLoai}','${i}');">${i}</a></li>
			                    </c:if>
			                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
			                    	<li><a href="javascript:phanTrangTheoLoaiThuongHieu('${param.idLoai}','${param.idThuongHieu}','${i}');">${i}</a></li>
			                    </c:if>
			                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
			                    	<%-- <li><a href="cua-hang?trang=${i}">${i}</a></li> --%>
			                    	<li><a href="javascript:phanTrang('${i}');">${i}</a></li>
			                    </c:if>
			                </c:if>
                        </c:forEach>
                        
                    	<c:if test="${!empty param.idLoai && empty param.idThuongHieu}">
	                    	<li><a href="javascript:phanTrangTheoLoai('${param.idLoai}','${(trang + 1) < tongSoTrang ? trang + 1 : tongSoTrang}');">&raquo;</a></li>
	                    </c:if>
	                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
	                    	<li><a href="javascript:phanTrangTheoLoaiThuongHieu('${param.idLoai}','${param.idThuongHieu}','${(trang + 1) < tongSoTrang ? trang + 1 : tongSoTrang}');">&raquo;</a></li>
	                    </c:if>
	                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
	                    	<li><a href="javascript:phanTrang('${(trang + 1) < tongSoTrang ? trang + 1 : tongSoTrang}');">&raquo;</a></li>
	                    </c:if>
                  </c:if>
                  
                  </ul>
                </div>
              </div>
            </div>
            <div class="category-products">
              <ul class="products-grid">
              
              <c:forEach items="${dssp}" var="sp">
                <li class="item col-lg-4 col-md-3 col-sm-4 col-xs-6">
                  <div class="item-inner">
                    <div class="item-img">
                      <div class="item-img-info"> <a href="chi-tiet-san-pham?idsp=${sp.id}" title="${sp.tenSanPham}" class="product-image"> <img src="images/${sp.hinhAnh}" alt="images/${sp.hinhAnh}"> </a>
                        <!-- <div class="new-label new-top-left"></div> -->
                        <div class="item-box-hover">
                          <div class="box-inner"> 
                          	<div class="actions">
	                            <div class="add_cart">
	                              <button class="button btn-cart" type="button" onclick="themVaoGio('${sp.id}','1')"><span>Thêm vào giỏ</span></button>
	                            </div>
                            	<div class="product-detail-bnt"><a href="chi-tiet-san-pham-phu/${sp.id}" class="button detail-bnt"><span>Xem nhanh</span></a></div>
                           	</div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="item-info">
                      <div class="info-inner">
                        <div class="item-title"> <a href="chi-tiet-san-pham?idsp=${sp.id}" title="${sp.tenSanPham}"> ${sp.tenSanPham} </a> </div>
                        <div class="item-content">
                          <div class="rating">
                            <div class="ratings">
                              <div class="rating-box">
                                <div class="rating" style="width:80%"></div>
                              </div>
                              <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
                            </div>
                          </div>
                          <div class="item-price">
                          	<fmt:formatNumber value="${sp.donGia}" type="number" var="donGia"/>
                          	<p class="old-price"> <span class="price-label">Giá:</span> <span class="price"> ${donGia} đ</span> </p>
                          	<fmt:formatNumber value="${sp.donGiaKM}" type="number" var="donGiaKM"/>
                            <p class="special-price"> <span class="price-label">Giá khuyến mãi</span> <span class="price"> ${donGiaKM} đ</span> </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              </c:forEach>
              
              </ul>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <div class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <aside class="col-left sidebar">
          <div class="side-nav-categories">
              <div class="block-title"> Sản phẩm </div>
              <!--block-title--> 
              <!-- BEGIN BOX-CATEGORY -->
              <div class="box-content box-category">
                <ul>
	                <c:forEach items="${dsl}" var="l">
	                  <li> <a class="active" href="cua-hang-theo-loai?idLoai=${l.id}">${l.tenLoai}</a> <span class="subDropdown minus"></span>
	                    <ul class="level0_415" style="display:block">
		                    <c:forEach items="${dsth}" var="th">
		                      <li> <a href="cua-hang-theo-loai-thuong-hieu?idLoai=${l.id}&&idThuongHieu=${th.id}"> ${th.tenThuongHieu} </a> <!-- <span class="subDropdown plus"></span> --></li>
		                    </c:forEach>
	                      <!--level1-->
	                    </ul>
	                    <!--level0--> 
	                  </li>
	                </c:forEach>
               </ul>
              </div>
            </div>
          </aside>
        </div>
      </div>
    </div>
  </section>
  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="top-banner-section wow bounceInUp animated">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-sm-3 col-xs-6">
          <div class="col add-banner1">
            <div class="top-b-text"><strong>30 ngày đổi trả</strong></div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-3 col-xs-6">
          <div class="col free-shipping"><strong>Giao hàng miễn phí</strong></div>
        </div>
        <div class="col-lg-3 col-sm-3 col-xs-6">
          <div class="col add-banner2">
            <div class="top-b-text"><strong>Thanh toán an toàn</strong></div>
          </div>
        </div>
        <div class="col-lg-3 col-sm-3 col-xs-6">
          <div class="col last offer"><strong>Hàng thật 100%</strong></div>
        </div>
      </div>
    </div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="brand-logo">
    <div class="container">
      <div class="slider-items-products">
        <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col6"> 
	          <c:forEach items="${dsth}" var="th">
	            <!-- Item -->
	            <div class="item"><a href="#"><img src="images/${th.hinhAnh}" alt="images/${th.hinhAnh}" style="width: 100%"></a> </div>
	            <!-- End Item --> 
	          </c:forEach>
          </div>
        </div>
      </div>
    </div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Footer -->
<footer>
    <section class="footer-navbar">
      <div class="footer-inner">
        <div class="container">
          <div class="row">
            <div class="col-sm-12 col-xs-12 col-lg-8">
              <div class="footer-column pull-left collapsed-block">
                <h4>Cửa hàng nước hoa<a class="expander visible-xs" href="#TabBlock-1">+</a></h4>
                <div class="tabBlock" id="TabBlock-1">
                  <ul class="links">
                    <li class="first"><a href="#">Chuyên cung cấp các loại nước hoa ngoại nhập với chất lương đảm bảo và giá cả phải chăng</a></li>
                    <li><a href="#">Một trong những thương hiệu uy tín, đi đầu ngành hàng nước hoa, mỹ phẩm</a></li>
                  </ul> 
                </div>
              </div>
              <div class="footer-column pull-left collapsed-block">
                <h4>Thông tin liên hệ<a class="expander visible-xs" href="#TabBlock-2">+</a></h4>
                <div class="tabBlock" id="TabBlock-2">
                  <ul class="links">
                    <li class="first"><a title="Địa chỉ" href="#">Địa chỉ: 227 Nguyễn Văn Cừ, Quận 5, TP.Hồ Chí Minh</a></li>
                    <li><a title="Điện thoại" href="#">Điện thoại: (028)38.351.056</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-lg-4">
              <div class="footer-column-last">
                <div class="newsletter-wrap collapsed-block">
                  <h4>Đăng ký nhận tin<a class="expander visible-xs" href="#TabBlock-4">+</a></h4>
                  <div class="tabBlock" id="TabBlock-4">
                    <form id="newsletter-validate-detail" method="post" action="#">
                      <div id="container_form_news">
                        <div id="container_form_news2">
                          <input type="text" class="input-text required-entry validate-email" value="Nhập email để nhận tin từ cửa hàng" onfocus=" this.value='' " title="Sign up for our newsletter" id="newsletter" name="email">
                          <button class="button subscribe" title="Nhận tin" type="submit"><span>Đăng ký</span></button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <p></p>
                <div class="social">
                  <ul class="link">
                    <li class="fb pull-left"><a href="#"></a></li>
                    <li class="tw pull-left"><a href="#"></a></li>
                    <li class="googleplus pull-left"><a href="#"></a></li>
                    <li class="rss pull-left"><a href="#"></a></li>
                    <li class="pintrest pull-left"><a href="#"></a></li>
                    <li class="linkedin pull-left"><a href="#"></a></li>
                    <li class="youtube pull-left"><a href="#"></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-middle">
        <div class="container">
          <div class="row">
            <div style="text-align:center"><a href="trang-chu"><img src="images/footer-logo.png" alt="footer-logo"></a></div>
            <address>
            <i class="icon-location-arrow"></i> 227 Nguyễn Văn Cừ, Quận 5, TP.Hồ Chí Minh <i class="icon-mobile-phone"></i><span> (028)38.351.056</span> <i class="icon-envelope"></i><a href="#">binhnd2507@gmail.com</a>
            </address>
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        <div class="container">
          <div class="row">
            <div class="col-sm-5 col-xs-12 coppyright">&copy; 2015 Magikcommerce. All Rights Reserved.</div>
          </div>
        </div>
      </div>
    </section>
  </footer>

<div id="mobile-menu">
  <div class="mm-search">
    <form action="tim-kiem-san-pham" method="post" name="search">
      <div class="input-group">
        <div class="input-group-btn">
          <button class="btn-default" type="submit"><i class="icon-search"></i></button>
        </div>
        <input type="text" class="form-control simple" placeholder="Tìm kiếm sản phẩm..." name="timKiem" id="srch-term">
      </div>
    </form>
  </div>
  <ul>
    <li> </li>
    <li>
      <div class="home"><a href="trang-chu"><i class="icon-home"></i>Trang chủ</a> </div>
    </li>
    <li><a href="cua-hang">Cửa hàng</a>
      <ul>
	     <c:forEach items="${dsl}" var="l">
	       <li> <a href="cua-hang-theo-loai?idLoai=${l.id}" class="">${l.tenLoai}</a></li>
	     </c:forEach>
      </ul>
    </li>
    <li><a href="san-pham">Sản phẩm</a></li>
    <li><a href="gio-hang">Giỏ hàng</a></li>
    <li><a href="thanh-toan">Thanh toán</a></li>
    <li><a href="Liên hệ">Liên hệ</a></li>
  </ul>
</div>


<!-- End Footer --> 
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

</div>
</body>

</html>