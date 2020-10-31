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
  