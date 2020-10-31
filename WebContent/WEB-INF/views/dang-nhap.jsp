<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Main Container -->
  <section class="main-container col1-layout wow bounceInUp animated">
    <div class="main container">
      <div class="account-login">
        <div class="page-title">
          <h2>Đăng nhập hoặc tạo tài khoản</h2>
        </div>
        <fieldset class="col2-set">
          <legend>Đăng nhập hoặc tạo tài khoản</legend>
          <div class="col-1 new-users"><strong>Khách Hàng Mới</strong>
            <div class="content">
              <p>Bằng cách tạo tài khoản với cửa hàng của chúng tôi, bạn sẽ có thể thực hiện quy trình thanh toán nhanh hơn, lưu trữ nhiều địa chỉ giao hàng, xem và theo dõi đơn đặt hàng trong tài khoản của bạn và hơn thế nữa.</p>
              <div class="buttons-set">
                <button class="button create-account"><span>Tạo tài khoản</span></button>
              </div>
            </div>
          </div>
          <form action="dang-nhap" method="post">
          <div class="col-2 registered-users"><strong>Khách Hàng Đã Đăng Ký</strong>
            <div class="content">
              <p>Nếu bạn có tài khoản với chúng tôi, vui lòng đăng nhập.</p>
              <ul class="form-list">
                <li>
                  <label for="email">Địa chỉ email <span class="required">*</span></label>
                  <br>
                  <input type="text" title="Địa chỉ email" class="input-text" id="email" value="" name="email">
                </li>
                <li>
                  <label for="pass">Mật khẩu <span class="required">*</span></label>
                  <br>
                  <input type="password" title="Password" id="pass" class="input-text" name="password">
                </li>
              </ul>
              <p class="required">* Bắt buộc</p>
              <div class="buttons-set">
                <button id="send2" name="send" type="submit" class="button login"><span>Đăng nhập</span></button>
                <a class="forgot-word" href="#">Quên mật khẩu?</a> </div>
            </div>
          </div>
          </form>
        </fieldset>
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
    </div>
  </section>
  <!-- Main Container End -->