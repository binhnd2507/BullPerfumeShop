<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="brand-logo">
    <div class="container">
      <div class="slider-items-products">
        <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col6"> 
	          <c:forEach items="${dsth}" var="th">
	            <!-- Item -->
	            <div class="item"><a href="#"><img src="images/${th.hinhAnh}" alt="images/${th.hinhAnh}" style="width: 100%"></a> </div>
	            <!-- End Item --> 
	          </c:forEach>
          </div>
        </div>
      </div>
    </div>
</div>