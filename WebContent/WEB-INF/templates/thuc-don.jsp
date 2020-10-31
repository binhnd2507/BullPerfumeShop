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