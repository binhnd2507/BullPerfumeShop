<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Main Container -->
  <section class="main-container col1-layout wow bounceInUp animated">
    <div class="main container">
      <div class="col-main">
        <div class="cart">
          <div class="page-title">
            <h2>Giỏ Hàng</h2>
          </div>
          <div class="table-responsive">
            <form method="post" action="cap-nhat-gio-hang">
              <input type="hidden" value="Vwww7itR3zQFe86m" name="form_key">
              <fieldset>
                <table class="data-table cart-table" id="shopping-cart-table">
                  <thead>
                    <tr class="first last">
                      <th rowspan="1">&nbsp;</th>
                      <th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
                      <th rowspan="1" class="hidden-phone"></th>
                      <th rowspan="1" class="hidden-phone"><span class="nobr">Chuyển vào mục yêu thích</span></th>
                      <th colspan="1" class="a-center"><span class="nobr">Đơn giá</span></th>
                      <th class="a-center " rowspan="1">Số lượng</th>
                      <th colspan="1" class="a-center">Thành tiền</th>
                      <th class="a-center" rowspan="1">&nbsp;</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr class="first last">
                      <td class="a-right last" colspan="8">
                        <button class="button btn-update" title="Update Cart" value="update_qty" name="update_cart_action" type="submit"><span>Cập nhật</span></button>
                        <button id="empty_cart_button" class="button" title="Xóa tất cả" value="empty_cart" name="update_cart_action" type="submit" formaction="xoa-toan-bo"><span>Xóa tất cả</span></button>
                      </td>
                    </tr>
                  </tfoot>
                  <tbody>
                  
                  <c:forEach items="${sessionScope.gioHang.danhSachSanPhamMua()}" var="spm">
                    <tr class="first odd" id="${spm.id}">
                      <td class="image"><a class="product-image" title="${spm.tenSanPham}" href="chi-tiet-san-pham?idsp=${spm.id}"><img width="75" alt="images/${spm.hinhAnh}" src="images/${spm.hinhAnh}"></a></td>
                      <td><h2 class="product-name"> <a href="chi-tiet-san-pham?idsp=${spm.id}">${spm.tenSanPham}</a> </h2></td>
                      <td class="a-center hidden-table"><a title="Chỉnh sửa" class="edit-bnt" href="#"></a></td>
                      <td class="a-center hidden-table"><a class="link-wishlist1 use-ajax" href="#">Chuyển</a></td>
                      <td class="a-center hidden-table">
                      	<fmt:formatNumber value="${spm.donGiaKM}" type="number" var="donGia"></fmt:formatNumber>
                      	<span class="cart-price"> <span class="price">${donGia} đ</span> </span>
                      </td>
                      <td class="a-center movewishlist"><input maxlength="12" type="number" class="input-text qty" title="Qty" size="4" value="${spm.soLuongMua}" name="slMua"></td>
                      <td class="a-center movewishlist">
                      	<fmt:formatNumber value="${spm.thanhTien()}" type="number" var="thanhTien"></fmt:formatNumber>
                      	<span class="cart-price"> <span class="price">${thanhTien} đ</span> </span>
                      </td>
                      <td class="a-center last">
                      	<a class="button remove-item" title="Xóa sản phẩm" href="javascript:xoaSanPham('${spm.id}')"><span>Xóa sản phẩm</span></a>
                      </td>
                    </tr>
                  </c:forEach>
                    
                  </tbody>
                </table>
              </fieldset>
            </form>
          </div>
          <!-- BEGIN CART COLLATERALS -->
          <div class="cart-collaterals row">
            <div class="col-sm-6">
              <div class="discount">
                <h3>Mã Giảm Giá</h3>
                <form method="post" action="#" id="discount-coupon-form">
                  <label for="coupon_code">Vui lòng nhập mã giảm giá (nếu có)</label>
                  <input type="hidden" value="0" id="remove-coupone" name="remove">
                  <input type="text" name="coupon_code" id="coupon_code" class="input-text fullwidth">
                  <button value="Apply Coupon" class="button coupon " title="Apply Coupon" type="button"><span>Sử dụng</span></button>
                </form>
              </div>
            </div>
            <div class="totals col-sm-6">
              <h3>Tổng Giỏ Hàng</h3>
              <div class="inner">
                <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                  <tfoot>
                    <tr>
                      <td colspan="1" class="a-left"><strong>Thành Tiền</strong></td>
                      <td class="a-right">
                      	<fmt:formatNumber value="${sessionScope.gioHang.tongTien()}" type="number" var="thanhTien"/>
                      	<strong><span class="price" id="thanhTien">${thanhTien} VNĐ</span></strong>
                      </td>
                    </tr>
                  </tfoot>
                  <tbody>
                  	<tr>
                      <td colspan="1" class="a-left"> Tổng Cộng </td>
                      <td class="a-right">
                      	<fmt:formatNumber value="${sessionScope.gioHang.tongTien()}" type="number" var="tongCong"/>
                      	<span class="price" id="tongCong">${tongCong} VNĐ</span>
                      </td>
                    </tr>
                  	<tr>
                      <td colspan="1" class="a-left"> Phí Giao Hàng </td>
                      <td class="a-right">
                      	<span class="price">Miễn phí</span>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <ul class="checkout">
                  <li>
                    <a href="thanh-toan"><button class="button btn-proceed-checkout" title="Thanh Toán" type="button"><span>Thanh Toán</span></button></a>
                  </li>
                </ul>
              </div>
              <!--inner--> 
              
            </div>
          </div>
          
          <!--cart-collaterals--> 
          
        </div>
        <div class="crosssel wow bounceInUp animated">
          <div class="">
            <h2>Sản Phẩm Bán Chạy</h2>
          </div>
          <div class="category-products">
            <ul class="products-grid crosssel-pro">
            
            <c:forEach items="${dsspbc}" var="spbc">
              <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a href="chi-tiet-san-pham?idsp=${spbc.id}" title="${spbc.tenSanPham}" class="product-image"> <img src="images/${spbc.hinhAnh}" alt="images/${spbc.hinhAnh}"> </a>
                      <div class="new-label new-top-left">Hot</div>
                      <div class="item-box-hover">
                        <div class="box-inner">
                          <div class="actions">
                            <div class="add_cart">
                              <button class="button btn-cart" type="button" title="Thêm vào giỏ" onclick="themVaoGio('${spbc.id}','1')"><span>Thêm vào giỏ</span></button>
                            </div>
                            <div class="product-detail-bnt"><a href="chi-tiet-san-pham-phu/${spbc.id}" class="button detail-bnt" title="Xem nhanh"><span>Xem nhanh</span></a></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a href="chi-tiet-san-pham?idsp=${spbc.id}" title="${spbc.tenSanPham}"> ${spbc.tenSanPham} </a> </div>
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
              </li>
            </c:forEach>
             
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>