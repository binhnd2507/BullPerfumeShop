<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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