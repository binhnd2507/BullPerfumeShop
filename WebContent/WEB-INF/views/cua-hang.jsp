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
            <li class="home"> <a title="Đi đến trang chủ" href="index">Trang chủ</a><span>» </span></li>
            <li class=""> <a title="Đi đến trang cửa hàng" href="cua-hang">Cửa hàng</a></li>
            <!-- <li class="category13"><strong>Cửa Hàng</strong></li> -->
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
  <!-- Main Container -->
  <section class="main-container col2-left-layout bounceInUp animated">
  <div class="page-header"><div class="container"><div class="row">
  <div class="col-xs-12">
              <h2>Cửa Hàng</h2></div></div></div>
            </div>
    <div class="container">
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
	                    	<li><a href="cua-hang-theo-loai?idLoai=${param.idLoai}&trang=${(trang - 1) > 0 ? trang - 1 : 1}">&laquo;</a></li>
	                    </c:if>
	                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
	                    	<li><a href="cua-hang-theo-loai-thuong-hieu?idLoai=${param.idLoai}&idThuongHieu=${param.idThuongHieu}&trang=${(trang - 1) > 0 ? trang - 1 : 1}">&laquo;</a></li>
	                    </c:if>
	                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
	                    	<li><a href="cua-hang?trang=${(trang - 1) > 0 ? trang - 1 : 1}">&laquo;</a></li>
	                    </c:if>
	                    
                  	    <c:forEach var="i" begin="${viTriDau}" end="${viTriCuoi}" step="1">
		                  	<c:if test="${i == trang}">
		                  		<c:if test="${!empty param.idLoai && empty param.idThuongHieu}">
			                    	<li><a href="cua-hang-theo-loai?idLoai=${param.idLoai}&trang=${i}" style="color: red; background-color: bisque;">${i}</a></li>
			                    </c:if>
			                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
			                    	<li><a href="cua-hang-theo-loai-thuong-hieu?idLoai=${param.idLoai}&idThuongHieu=${param.idThuongHieu}&trang=${i}" style="color: red; background-color: bisque;">${i}</a></li>
			                    </c:if>
			                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
			                    	<li><a href="cua-hang?trang=${i}" style="color: red; background-color: bisque;">${i}</a></li>
			                    </c:if>
			                </c:if>
			                <c:if test="${i != trang}">
			                	<c:if test="${!empty param.idLoai && empty param.idThuongHieu}">
			                    	<li><a href="cua-hang-theo-loai?idLoai=${param.idLoai}&trang=${i}">${i}</a></li>
			                    </c:if>
			                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
			                    	<li><a href="cua-hang-theo-loai-thuong-hieu?idLoai=${param.idLoai}&idThuongHieu=${param.idThuongHieu}&trang=${i}">${i}</a></li>
			                    </c:if>
			                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
			                    	<li><a href="cua-hang?trang=${i}">${i}</a></li>
			                    </c:if>
			                </c:if>
                        </c:forEach>
                        
                    	<c:if test="${!empty param.idLoai && empty param.idThuongHieu}">
	                    	<li><a href="cua-hang-theo-loai?idLoai=${param.idLoai}&trang=${(trang + 1) < tongSoTrang ? trang + 1 : tongSoTrang}">&raquo;</a></li>
	                    </c:if>
	                    <c:if test="${!empty param.idLoai && !empty param.idThuongHieu}">
	                    	<li><a href="cua-hang-theo-loai-thuong-hieu?idLoai=${param.idLoai}&idThuongHieu=${param.idThuongHieu}&trang=${(trang + 1) < tongSoTrang ? trang + 1 : tongSoTrang}">&raquo;</a></li>
	                    </c:if>
	                    <c:if test="${empty param.idLoai && empty param.idThuongHieu}">
	                    	<li><a href="cua-hang?trang=${(trang + 1) < tongSoTrang ? trang + 1 : tongSoTrang}">&raquo;</a></li>
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
                      <div class="item-img-info"> <a href="chi-tiet-san-pham?idsp=${sp.id}&&idThuongHieu=${sp.idThuongHieu}" title="${sp.tenSanPham}" class="product-image"> <img src="images/${sp.hinhAnh}" alt="images/${sp.hinhAnh}"> </a>
                        <!-- <div class="new-label new-top-left"></div> -->
                        <div class="item-box-hover">
                          <div class="box-inner"> 
                          	<div class="actions">
	                            <div class="add_cart">
	                              <button class="button btn-cart" type="button" onclick="themVaoGio('${sp.id}','1')"><span>Thêm vào giỏ</span></button>
	                            </div>
                            	<div class="product-detail-bnt"><a href="quick_view.html" class="button detail-bnt"><span>Xem nhanh</span></a></div>
                           		<span class="add-to-links"> <a href="wishlist.html" class="link-wishlist" title="Add to Wishlist"><span>Add to Wishlist</span></a> <a href="compare.html" class="link-compare add_to_compare" title="Add to Compare"><span>Add to Compare</span></a></span> 
                           	</div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="item-info">
                      <div class="info-inner">
                        <div class="item-title"> <a href="chi-tiet-san-pham?idsp=${sp.id}&&idThuongHieu=${sp.idThuongHieu}" title="${sp.tenSanPham}"> ${sp.tenSanPham} </a> </div>
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
                
             <!-- Special Slider -->
  <!-- <section class="special-pro">
    <div class="slider-items-products">
      <div class="block-title">
        <h2>Special Products</h2>
      </div>
      <div id="special-slider" class="product-flexslider hidden-buttons">
        <div class="slider-items slider-width-col4 products-grid">
                       
            Item
            <div class="item">
              <div class="item-inner">
                <div class="item-img">
                  <div class="item-img-info"> <a class="product-image" title="Sample Product" href="product_detail.html"> <img alt="Sample Product" src="products-images/product11.jpg"></a>
                    <div class="item-box-hover">
                      <div class="box-inner">                                        
                                        <div class="actions">
                                        <div class="add_cart">
                                          <button class="button btn-cart" type="button"><span>Add to Cart</span></button>
                                        </div>
                                        <div class="product-detail-bnt"><a href="quick_view.html" class="button detail-bnt"><span>Quick View</span></a></div> <span class="add-to-links"><a href="wishlist.html" class="link-wishlist" title="Add to Wishlist"><span>Add to Wishlist</span></a> 
 <a href="compare.html" class="link-compare add_to_compare" title="Add to Compare"><span>Add to Compare</span></a></span> </div>
                                      </div>
                    </div>
                  </div>
                </div>
                <div class="item-info">
                  <div class="info-inner">
                    <div class="item-title"> <a title="Sample Product" href="product_detail.html"> Sample Product </a> </div>
                    <div class="item-content">
                      <div class="rating">
                        <div class="ratings">
                          <div class="rating-box">
                            <div style="width:30%" class="rating"></div>
                          </div>
                          <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
                        </div>
                      </div>
                      <div class="item-price">
                        <div class="price-box">
                          <p class="old-price"> <span class="price-label">Regular Price:</span> <span id="old-price-2" class="price"> $567.00 </span> </p>
                          <p class="special-price"> <span class="price-label">Special Price</span> <span id="product-price-2" class="price"> $456.00 </span> </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            End Item 
            
            Item
            <div class="item">
              <div class="item-inner">
                <div class="item-img">
                  <div class="item-img-info"> <a class="product-image" title="Stablished fact reader" href="#"> <img alt="Stablished fact reader" src="products-images/product12.jpg"></a>
                    <div class="item-box-hover">
                      <div class="box-inner">                                        
                                        <div class="actions">
                                        <div class="add_cart">
                                          <button class="button btn-cart" type="button"><span>Add to Cart</span></button>
                                        </div>
                                        <div class="product-detail-bnt"><a href="quick_view.html" class="button detail-bnt"><span>Quick View</span></a></div> <span class="add-to-links"><a href="wishlist.html" class="link-wishlist" title="Add to Wishlist"><span>Add to Wishlist</span></a> 
 <a href="compare.html" class="link-compare add_to_compare" title="Add to Compare"><span>Add to Compare</span></a></span> </div>
                                      </div>
                    </div>
                  </div>
                </div>
                <div class="item-info">
                  <div class="info-inner">
                    <div class="item-title"> <a title="Stablished fact reader" href="#">Sample Product</a> </div>
                    <div class="item-content">
                      <div class="rating">
                        <div class="ratings">
                          <div class="rating-box">
                            <div style="width:100%" class="rating"></div>
                          </div>
                          <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
                        </div>
                      </div>
                      <div class="item-price">
                        <div class="price-box">
                          <p class="old-price"> <span class="price-label">Regular Price:</span> <span id="old-price-27" class="price"> $100.00 </span> </p>
                          <p class="special-price"> <span class="price-label">Special Price</span> <span id="product-price-27" class="price"> $90.00 </span> </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            End Item
            
            <div class="item">
              <div class="item-inner">
                <div class="item-img">
                  <div class="item-img-info"> <a class="product-image" title="Sample Product" href="product_detail.html"> <img alt="Sample Product" src="products-images/product13.jpg"> </a>
                    <div class="new-label new-top-left">new</div>
                    <div class="item-box-hover">
                      <div class="box-inner">                                        
                                        <div class="actions">
                                        <div class="add_cart">
                                          <button class="button btn-cart" type="button"><span>Add to Cart</span></button>
                                        </div>
                                        <div class="product-detail-bnt"><a href="quick_view.html" class="button detail-bnt"><span>Quick View</span></a></div> <span class="add-to-links"><a href="wishlist.html" class="link-wishlist" title="Add to Wishlist"><span>Add to Wishlist</span></a> 
 <a href="compare.html" class="link-compare add_to_compare" title="Add to Compare"><span>Add to Compare</span></a></span> </div>
                                      </div>
                    </div>
                  </div>
                </div>
                <div class="item-info">
                  <div class="info-inner">
                    <div class="item-title"> <a title="Sample Product" href="product_detail.html"> Sample Product </a> </div>
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
                        <div class="price-box"> <span id="product-price-1" class="regular-price"> <span class="price">$125.00</span> </span> </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    </section> -->
  <!-- End Featured Slider --> 
          </aside>
        </div>
      </div>
    </div>
  </section>