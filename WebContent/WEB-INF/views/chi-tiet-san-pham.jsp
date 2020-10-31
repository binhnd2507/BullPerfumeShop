<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi-VN"/>
<div class="breadcrumbs bounceInUp animated">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="home"> <a title="Trở về trang chủ" href="trang-chu">Trang chủ</a><span>» </span></li>
            <li class=""> <a title="Trở về trang ${loai.tenLoai}" href="cua-hang-theo-loai?idLoai=${loai.id}">${loai.tenLoai}</a><span>» </span></li>
            <li class=""> <a title="Trở về trang ${thuongHieu.tenThuongHieu}" href="cua-hang-theo-loai-thuong-hieu?idLoai=${loai.id}&&idThuongHieu=${thuongHieu.id}">${thuongHieu.tenThuongHieu}</a><span>» </span></li>
            <li class="category13"><strong>${sp.tenSanPham}</strong></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
  <!-- Main Container -->
  <div class="main-container col1-layout">
    <div class="main container">
    <div class="col-main">
      <div class="row">
        <div class="product-view">
          <div class="product-essential">
          
            <form action="them-gio-hang" method="post" id="product_addtocart_form">
              <input name="idsp" value="${sp.id}" type="hidden">
              <div class="product-img-box col-sm-5 col-xs-12 bounceInRight animated">
                <div class="new-label new-top-left"> New </div>
                <div class="product-image">
                  <div class="large-image"> <a href="images/${sp.hinhAnh}" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20"> <img alt="Thumbnail" src="images/${sp.hinhAnh}"> </a> </div>
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
                  	<fmt:formatNumber value="${sp.donGia}" type="number" var="donGia"></fmt:formatNumber>
                    <p class="old-price"> <span class="price-label">Giá:</span> <span class="price"> ${donGia} đ</span> </p>
                    <fmt:formatNumber value="${sp.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>
                    <p class="special-price"> <span class="price-label">Giá khuyến mãi</span> <span id="product-price-48" class="price"> ${donGiaKM} đ</span> </p>
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
          <div class="product-collateral col-sm-12 col-xs-12 bounceInUp animated">
            <div class="add_info">
              <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
                <li class="active"> <a href="#product_tabs_description" data-toggle="tab"> Mô tả </a> </li>
                <li> <a href="#reviews_tabs" data-toggle="tab">Đánh giá</a> </li>
              </ul>
              <div id="productTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="product_tabs_description">
                  <div class="std">
                    <p>${sp.moTa}</p>
                  </div>
                </div>
                
                <div class="tab-pane fade" id="reviews_tabs">
                  <div class="box-collateral box-reviews" id="customer-reviews">
                    <div class="box-reviews1">
                      <div class="form-add">
                        <form id="review-form" method="post" action="them-danh-gia">
                          <h3>Viết đánh giá của riêng bạn</h3>
                          <fieldset>
                            <h4>Bạn đánh giá sản phẩm này như thế nào <em class="required">*</em></h4>
                            <span id="input-message-box"></span>
                            <table id="product-review-table" class="data-table">
                              
                              <thead>
                                <tr class="first last">
                                  <th>&nbsp;</th>
                                  <th><span class="nobr">1 *</span></th>
                                  <th><span class="nobr">2 *</span></th>
                                  <th><span class="nobr">3 *</span></th>
                                  <th><span class="nobr">4 *</span></th>
                                  <th><span class="nobr">5 *</span></th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr class="last odd">
                                  <th>Chất lượng</th>
                                  <td class="value"><input type="radio" class="radio" value="1" id="Quality_1" name="diem"></td>
                                  <td class="value"><input type="radio" class="radio" value="2" id="Quality_2" name="diem"></td>
                                  <td class="value"><input type="radio" class="radio" value="3" id="Quality_3" name="diem"></td>
                                  <td class="value"><input type="radio" class="radio" value="4" id="Quality_4" name="diem"></td>
                                  <td class="value last"><input type="radio" class="radio" value="5" id="Quality_5" name="diem"></td>
                                </tr>
                              </tbody>
                            </table>
                            <input type="hidden" value="${sp.id}" class="validate-rating" name="idSanPham">
                            <div class="review1">
                              <ul class="form-list">
                                <li>
                                  <label class="required" for="nickname_field">Họ tên<em>*</em></label>
                                  <div class="input-box">
                                    <input type="text" class="input-text" id="nickname_field" name="ten">
                                  </div>
                                </li>
                                <li>
                                  <label class="required" for="summary_field">Email<em>*</em></label>
                                  <div class="input-box">
                                    <input type="email" class="input-text" id="summary_field" name="email">
                                  </div>
                                </li>
                              </ul>
                            </div>
                            <div class="review2">
                              <ul>
                                <li>
                                  <label class="required label-wide" for="review_field">Đánh giá<em>*</em></label>
                                  <div class="input-box">
                                    <textarea rows="3" cols="5" id="review_field" name="danhGia"></textarea>
                                  </div>
                                </li>
                              </ul>
                              <div class="buttons-set">
                                <button class="button submit" title="Submit Review" type="submit"><span>Gửi bảng đánh giá</span></button>
                              </div>
                            </div>
                          </fieldset>
                        </form>
                      </div>
                    </div>
                    <div class="clear"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="related-slider col-lg-12 col-xs-12 bounceInDown animated">
            <div class="slider-items-products">
              <div class="slider-items-products">
              <div class="new_title center">
        <h2>Các sản phẩm liên quan</h2>
      </div>
                  
                  <div id="related-products-slider" class="product-flexslider hidden-buttons">
                    <div class="slider-items slider-width-col4 products-grid">
            
           <c:forEach items="${dssplq}" var="splq">
            <div class="item">
              <div class="item-inner">
                <div class="item-img">
                  <div class="item-img-info"> <a class="product-image" title="${splq.tenSanPham}" href="chi-tiet-san-pham?idsp=${splq.id}"> <img alt="images/${splq.hinhAnh}" src="images/${splq.hinhAnh}"> </a>
                    <div class="sale-label sale-top-left">sale</div>
                    <div class="item-box-hover">
                      <div class="box-inner">                                        
                                        <div class="actions">
                                        <div class="add_cart">
                                          <button class="button btn-cart" type="button" onclick="themVaoGio('${splq.id}','1')"><span>Thêm vào giỏ</span></button>
                                        </div>
                                        <div class="product-detail-bnt"><a href="chi-tiet-san-pham-phu/${splq.id}" class="button detail-bnt"><span>Xem nhanh</span></a></div> </div>
                                      </div>
                    </div>
                  </div>
                </div>
                <div class="item-info">
                  <div class="info-inner">
                    <div class="item-title"> <a title="${splq.tenSanPham}" href="chi-tiet-san-pham?idsp=${splq.id}"> ${splq.tenSanPham} </a> </div>
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
                      	<fmt:formatNumber value="${splq.donGia}" type="number" var="donGia"/>
                        <p class="old-price"> <span class="price-label">Giá:</span> <span id="old-price-2" class="price"> ${donGia} đ</span> </p>
                        <fmt:formatNumber value="${splq.donGiaKM}" type="number" var="donGiaKM"/>
                        <p class="special-price"> <span class="price-label">Giá khuyến mãi</span> <span id="product-price-2" class="price"> ${donGiaKM} đ</span> </p>
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
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <!-- Main Container End --> 
  
  <!-- Upsell Product Slider -->
  <section class="upsell-pro bounceInUp animated">
    <div class="container">
      <div class="slider-items-products">
        <div class="new_title center">
          <h2>Sản Phẩm Yêu Thích Nhất</h2>
        </div>
        <div id="upsell-products-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col4 products-grid">
          
          <c:forEach items="${dsspytn}" var="spytn">
            <div class="item">
              <div class="item-inner">
                <div class="item-img">
                  <div class="item-img-info"> <a class="product-image" title="${spytn.tenSanPham}" href="chi-tiet-san-pham?idsp=${spytn.id}"> <img alt="images/${spytn.hinhAnh}" src="images/${spytn.hinhAnh}"> </a>
                    <div class="sale-label sale-top-left">Like</div>
                    <div class="item-box-hover">
                      <div class="box-inner">                                        
                                        <div class="actions">
                                        <div class="add_cart">
                                          <button class="button btn-cart" type="button" onclick="themVaoGio('${spytn.id}','1')"><span>Thêm vào giỏ</span></button>
                                        </div>
                                        <div class="product-detail-bnt"><a href="chi-tiet-san-pham-phu/${spytn.id}" class="button detail-bnt"><span>Xem nhanh</span></a></div> </div>
                                      </div>
                    </div>
                  </div>
                </div>
                <div class="item-info">
                  <div class="info-inner">
                    <div class="item-title"> <a title="${spytn.tenSanPham}" href="chi-tiet-san-pham?idsp=${spytn.id}"> ${spytn.tenSanPham} </a> </div>
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
                      	<fmt:formatNumber value="${spytn.donGia}" type="number" var="donGia"/>
                        <!-- <div class="price-box"> <span  class="regular-price"> <span class="price">$125.00</span> </span> </div> -->
                        <p class="old-price"> <span class="price-label">Giá:</span> <span class="price"> ${donGia} đ</span> </p>
                        <fmt:formatNumber value="${spytn.donGiaKM}" type="number" var="donGiaKM"/>
                        <p class="special-price"> <span class="price-label">Giá khuyến mãi</span> <span class="price"> ${donGiaKM} đ</span> </p>
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
    </div>
  </section>
  <!-- Upsell Product Slider End --> 