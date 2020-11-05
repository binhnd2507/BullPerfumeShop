<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi-VN" />

<!-- Slider -->
  <div id="magik-slideshow" class="magik-slideshow">
    <div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container' >
      <div id='rev_slider_4' class='rev_slider fullwidthabanner'>
        <ul>
	        <c:forEach items="${dsqc}" var="qc">
	          <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/${qc.hinhAnh}'><img src='images/${qc.hinhAnh}' alt="images/${qc.hinhAnh}" style="width: 100%;" data-bgposition='left top'  data-bgfit='cover' data-bgrepeat='no-repeat'  />
	            <div class="info">
	              <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='450'  data-y='60'  data-endspeed='500'  data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2;max-width:auto;max-height:auto;white-space:nowrap;'></div>
	              <div class='tp-caption line' data-x='450'  data-y='120'  data-endspeed='500'  data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3;max-width:auto;max-height:auto;white-space:nowrap;'>&nbsp;</div>
	              <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='450'  data-y='140'  data-endspeed='500'  data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3;max-width:auto;max-height:auto;white-space:nowrap;'>${qc.thongDiep}</div>
	              <div class='tp-caption sfb  tp-resizeme ' data-x='450'  data-y='330'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;max-width:auto;max-height:auto;white-space:nowrap;'><a href='#' class="view-more">Xem chi tiết</a> <a href='#' class="buy-btn">Mua ngay</a></div>
	              <div class='tp-caption Title sft  tp-resizeme ' data-x='450'  data-y='220'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;max-width:auto;max-height:auto;white-space:nowrap;'>${qc.thongDiep}<br></div>
	            </div>
	          </li>
	        </c:forEach>
        </ul>
      </div>
    </div>
  </div>
  <!-- end banner -->
  
 <!-- main container -->
 <div class="main-col">
    <div class="container">
      <div class="row">
        <div class="product-grid-view">
          <div class="col-md-12">
            <div class="std">
              <div class="home-tabs wow bounceInUp animated">
                <div class="producttabs">
                  <div id="magik_producttabs1" class="magik-producttabs"> 
                    <!--<h3></h3>-->
                    <div class="magik-pdt-container"> 
                      <!--Begin Tab Nav -->
                      <div class="magik-pdt-nav">
                        <ul class="pdt-nav">
                          <li class="item-nav tab-loaded tab-nav-actived" data-type="order" data-catid="" data-orderby="best_sales" data-href="pdt_best_sales"><span class="title-navi">Giảm Giá Nhiều Nhất</span></li>
                          <li class="item-nav" data-type="order" data-catid="" data-orderby="new_arrivals" data-href="pdt_new_arrivals"><span class="title-navi">Sản Phẩm Mới</span></li>
                        </ul>
                      </div>
                      <!-- End Tab Nav --> 
                      <!--Begin Tab Content -->
                      <div class="magik-pdt-content wide-5">
                        <div class="pdt-content is-loaded pdt_best_sales tab-content-actived">
                          <ul class="pdt-list products-grid-home zoomOut play">
                          
	                          <c:forEach items="${dsspgg}" var="spgg">
	                            <li class="item item-animate wide-first">
	                              <div class="item-inner" style="margin-left: 10px;">
	                                <div class="item-img">
	                                  <div class="item-img-info"><a href="chi-tiet-san-pham?idsp=${spgg.id}" title="${spgg.tenSanPham}" class="product-image"><img src="images/${spgg.hinhAnh}" alt="images/${spgg.hinhAnh}"></a>
	                                    <div class="new-label new-top-left">Sale</div>
	                                    <div class="item-box-hover">
	                                      <div class="box-inner">
	                                        <div class="actions">
	                                          <div class="add_cart">
	                                          	<button class="button btn-cart" type="button" title="Thêm vào giỏ" onclick="themVaoGio('${spgg.id}', '1')"><span>Thêm vào giỏ</span></button>
	                                          </div>
	                                          <div class="product-detail-bnt"><a href="chi-tiet-san-pham-phu/${spgg.id}" class="button detail-bnt" title="Xem nhanh"><span>Xem nhanh</span></a></div>
	                                        </div>
	                                      </div>
	                                    </div>
	                                  </div>
	                                </div>
	                                <div class="item-info">
	                                  <div class="info-inner">
	                                    <div class="item-title"><a href="chi-tiet-san-pham?idsp=${spgg.id}" title="${spgg.tenSanPham}">${spgg.tenSanPham}</a> </div>
	                                    <div class="item-content">
	                                      <div class="rating">
	                                        <div class="ratings">
	                                          <div class="rating-box">
	                                            <div class="rating" style="width:80%"></div>
	                                          </div>
	                                          <p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
	                                        </div>
	                                      </div>
	                                      <div class="item-price">
	                                        <div class="price-box">
	                                        	<fmt:formatNumber value="${spgg.donGia}" type="number" var="donGia"/>
	                                        	<p class="old-price"><span class="price-label">Giá:</span> <span class="price">${donGia} đ</span> </p>
	                                        	<fmt:formatNumber value="${spgg.donGiaKM}" type="number" var="donGiaKM"/>
	                                          	<p class="special-price"><span class="price-label">Giá khuyến mãi</span> <span class="price">${donGiaKM} đ</span> </p> 
	                                        </div>
	                                      </div>
	                                    </div>
	                                  </div>
	                                </div>
	                              </div>
	                            </li>
	                          </c:forEach>
	                          
                          </ul>
                        </div>
                        
                        <div class="pdt-content pdt_new_arrivals is-loaded">
                          <ul class="pdt-list products-grid-home zoomOut play">
                          
	                          <c:forEach items="${dsspm}" var="spm">
	                            <li class="item item-animate wide-first">
	                              <div class="item-inner" style="margin-left: 10px">
	                                <div class="item-img">
	                                  <div class="item-img-info"><a href="chi-tiet-san-pham?idsp=${spm.id}" title="${spm.tenSanPham}" class="product-image"><img src="images/${spm.hinhAnh}" alt="images/${spm.hinhAnh}"></a>
	                                    <div class="new-label new-top-left">New</div>
	                                    <div class="item-box-hover">
	                                      <div class="box-inner">
	                                        <div class="actions">
	                                          <div class="add_cart">
	                                            <button class="button btn-cart" type="button" title="Thêm vào giỏ" onclick="themVaoGio('${spm.id}', '1')"><span>Thêm vào giỏ</span></button>
	                                          </div>
	                                          <div class="product-detail-bnt"><a href="chi-tiet-san-pham-phu/${spm.id}" class="button detail-bnt" title="Xem nhanh"><span>Xem nhanh</span></a></div>
	                                        </div>
	                                      </div>
	                                    </div>
	                                  </div>
	                                </div>
	                                <div class="item-info">
	                                  <div class="info-inner">
	                                    <div class="item-title"><a href="chi-tiet-san-pham?idsp=${spm.id}" title="${spm.tenSanPham}">${spm.tenSanPham}</a> </div>
	                                    <div class="item-content">
	                                      <div class="rating">
	                                        <div class="ratings">
	                                          <div class="rating-box">
	                                            <div class="rating" style="width:80%"></div>
	                                          </div>
	                                          <p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
	                                        </div>
	                                      </div>
	                                      <div class="item-price">
	                                        <div class="price-box">
	                                        	<fmt:formatNumber value="${spm.donGia}" type="number" var="donGia"/>
	                                        	<p class="old-price"><span class="price-label">Giá:</span> <span class="price">${donGia} đ</span> </p>
	                                        	<fmt:formatNumber value="${spm.donGiaKM}" type="number" var="donGiaKM"/>
	                                          	<p class="special-price"><span class="price-label">Giá khuyến mãi</span> <span class="price">${donGiaKM} đ</span> </p>
	                                        </div>
	                                      </div>
	                                    </div>
	                                  </div>
	                                </div>
	                              </div>
	                            </li>
	                           </c:forEach>
                            
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end main container --> 
  <!-- Featured Slider -->
  <section class="featured-pro container wow bounceInUp animated">
    <div class="slider-items-products">
      <div class="new_title center">
        <h2>Sản Phẩm Bán Chạy</h2>
      </div>
      <div id="featured-slider" class="product-flexslider hidden-buttons">
        <div class="slider-items slider-width-col4 products-grid">
        
	        <c:forEach items="${dsspbc}" var="spbc">
	          <div class="item">
	            <div class="item-inner">
	              <div class="item-img">
	                <div class="item-img-info"> <a class="product-image" title="${spbc.tenSanPham}" href="chi-tiet-san-pham?idsp=${spbc.id}"> <img alt="images/${spbc.hinhAnh}" src="images/${spbc.hinhAnh}"> </a>
	                  <div class="sale-label sale-top-left">Hot</div>
	                  <div class="item-box-hover">
	                    <div class="box-inner">
	                      <div class="actions">
	                        <div class="add_cart">
	                          <button class="button btn-cart" type="button" title="Thêm vào giỏ" onclick="themVaoGio('${spbc.id}', '1')"><span>Thêm vào giỏ</span></button>
	                        </div>
	                        <div class="product-detail-bnt"><a href="chi-tiet-san-pham-phu/${spbc.id}" class="button detail-bnt" title="Xem nhanh"><span>Xem nhanh</span></a></div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <div class="item-info">
	                <div class="info-inner">
	                  <div class="item-title"> <a title="${spbc.tenSanPham}" href="chi-tiet-san-pham?idsp=${spbc.id}"> ${spbc.tenSanPham} </a> </div>
	                  <div class="item-content">
	                    <div class="rating">
	                      <div class="ratings">
	                        <div class="rating-box">
	                          <div style="width:80%" class="rating"></div>
	                        </div>
	                        <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
	                      </div>
	                    </div>
	                    <div class="item-price">
	                    	<div class="price-box">
		                    	<fmt:formatNumber value="${spbc.donGia}" type="number" var="donGia"/>
		                      	<p class="old-price"> <span class="price-label">Giá:</span> <span class="price"> ${donGia} đ</span> </p>
		                      	<fmt:formatNumber value="${spbc.donGiaKM}" type="number" var="donGiaKM"/>
		                        <p class="special-price"> <span class="price-label">Giá khuyến mãi</span> <span class="price"> ${donGiaKM} đ</span> </p>
	                        </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </c:forEach>
          
        </div>
      </div>
    </div>
  </section>
  <!-- End Featured Slider --> 