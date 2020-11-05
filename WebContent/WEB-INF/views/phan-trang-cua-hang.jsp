<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi-VN" />    
    
    
      <div class="row">
        <div class="col-main col-sm-9 col-sm-push-3">
          <article class="col-main">
            
            <div class="toolbar">
              <div id="sort-by">
                <label class="left">Sắp xếp: </label>
                <ul>
                  <li><a href="#">Đơn giá<span class="right-arrow"></span></a>
                    <ul>
                      <li><a href="#">Tăng</a></li>
                      <li><a href="#">Giảm</a></li>
                    </ul>
                  </li>
                </ul>
                <!-- <a class="button-asc left" href="#" title="Set Descending Direction"><span class="glyphicon glyphicon-arrow-up"></span></a> --> 
              </div>
    		<div class="pager">
                <div class="pages">
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