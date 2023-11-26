<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="./fonts/fontawesome/css/all.css">
  </head>
  <body>
    <div id="payment">
      <div id="header-payment">
        <div class="font-header">
          <h1><i class="fa-regular fa-credit-card"></i> THANH TOÁN</h1>
        </div>
      </div>
      <div id="content-payment">
        <form id="detail" action="1">
          <div id="customer-details">
            <h2 style="font-size: 35px">THÔNG TIN KHÁCH HÀNG</h2>
            <label for="name">Tên:</label>
            <div class="form-group">
              <input type="text" id="txtname" name="name" />
              <i class="fa-regular fa-user"></i>
            </div>
            <label for="Address"> Địa chỉ:</label>
            <div class="form-group">
              <input type="text" id="txtAddress" name="Address" />
              <i class="fa-solid fa-location-dot"></i>
            </div>
            <label for="phone"> Số điện thoại:</label>
            <div class="form-group">
              <input type="text" id="phone" name="phone" />
              <i class="fa-solid fa-phone"></i>
            </div>
          </div>
          <div id="order-details">
            <table>
              <tr>
                <th colspan="2" style="font-size: 35px">CHI TIẾT ĐƠN HÀNG</th>
              </tr>

              <tr>
                <th>Tổng tiền hàng:</th>
                <td>200.000 VND</td>
              </tr>
              <tr class="border">
                <th>Phí vận chuyển:</th>
                <td>30.000 VND</td>
              </tr>

              <tr>
                <th>Tổng tiền:</th>
                <td>230.000 VND</td>
              </tr>
            </table>
            <input type="submit" id="btOrder" value="Xác Nhận" name="btOrder"/>
          </div>
          <h2 class="h2payment">HÌNH THỨC THANH TOÁN</h2>
          <div id="form-payment">
            <div class="form postpaid">
              <img src="image/postpaid.png" alt="Thanh toán khi nhận hàng" />
              <input type="radio"id="cbPostpaid" name="payment" value="1" />
              <label for="cbPostpaid">Thanh toán khi nhận hàng</label>
            </div>
            <div class="form prepay">
              <img src="image/prepay.png" alt="Hình thức trả trước" />
              <input type="radio"id="cbPrepay"name="payment"value="1"/>
              <label for="cbPrepay">Hình thức trả trước</label>
            </div>
          </div>
          <h2 class="h2payment">HÌNH THỨC GIAO HÀNG</h2>
          <div id="form-delivery">
            <div class="form fast">
              <img src="image/fast delivery.png" alt="Giao hàng nhanh" />
              <input type="radio" id="cbFast" name="delivery" value="0" />
              <label for="cbFast">Giao hàng nhanh</label>
            </div>
            <div class="form savings">
              <img src="image/deliver savings.png" alt="Giao hàng tiết kiệm" />
              <input type="radio" id="cbSavings"name="deliver"value="0"/>
              <label for="cbSavings">Giao hàng tiết kiệm</label>
            </div>
          </div>
        </form>
      </div>
      
    </div>
    <%@include file="/view/template/footer.jsp" %>
  </body>
</html>