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