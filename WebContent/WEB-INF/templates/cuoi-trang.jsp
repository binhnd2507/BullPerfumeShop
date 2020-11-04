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

</div>
</body>

</html>