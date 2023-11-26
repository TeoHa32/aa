<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Detail</title>
    <!-- BOOTSTRAP -->
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- ICON -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./css/style-order-detail.css">
    <script src="./js/main-order-detail.js"></script>
</head>
<body>
    <div class="container-fluid py-5">
        <div class="container ">
            <div class="row">
                <!-- Giỏ hàng -->
                <div class="col-8">
                    <div class="logo-title">                        
                            <img src="./image/logo.png" alt="logo">                        
                        <span class="title">
                            <i class="fa-solid fa-cart-shopping"></i>
                            <span>GIỎ HÀNG</span>
                        </span>                   
                    </div>
                    <div class="cart-item">                        
                        <table class="table">
                            <thead class="table-success ">
                                <tr>
                                    <th>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="select" onchange="selectAllCheckboxes()">                                            
                                          </div>
                                    </th>
                                    <th colspan="2">Sản phẩm</th>
                                    <th>Đơn giá</th>
                                    <th>Số lượng</th>                                
                                    <th>Thành tiền</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr >
                                    <th>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input">                                            
                                          </div>
                                    </th>
                                    <td colspan="2">
                                        <div class="d-flex">                                        
                                            <img class="img-thumbnail" src="./image/sach.png" alt="Ảnh sản phẩm" width="100" height="80">
                                            
                                            <div>
                                                <p class="mb-0">Tên sản phẩm</p>
                                                <p class="mb-0" style="color: #a6a6a6;">Thể loại</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>100đ</td>
                                    <td>100đ</td>
                                    <td><p class="color-xmark">100đ</p></td>
                                    <td><i class="fa-solid fa-xmark color-xmark"></i></td>                                    
                                </tr>
                                <tr >
                                    <th>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input"  >                                            
                                          </div>
                                    </th>
                                    <td colspan="2">
                                        <div class="d-flex">
                                            <img class="img-thumbnail mr-2" src="./image/sach.png" alt="Ảnh sản phẩm" width="100" height="80">
                                            <div>
                                                <p class="mb-0">Tên sản phẩm</p>
                                                <p class="mb-0" style="color: #a6a6a6;">Thể loại</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>100đ</td>
                                    <td>100đ</td>
                                    <td><p class="color-xmark">100đ</p></td>
                                    <td><i class="fa-solid fa-xmark color-xmark"></i></td>                                    
                                </tr>
                                <tr >
                                    <th>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input">                                            
                                          </div>
                                    </th>
                                    <td colspan="2">
                                        <div class="d-flex">
                                            <img class="img-thumbnail" src="./image/sach.png" alt="Ảnh sản phẩm" width="100" height="80">
                                            <div>
                                                <p class="mb-0">Tên sản phẩm</p>
                                                <p class="mb-0" style="color: #a6a6a6;">Thể loại</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>100đ</td>
                                    <td>100đ</td>
                                    <td><p class="color-xmark">100đ</p></td>
                                    <td ><i class="fa-solid fa-xmark color-xmark"></i></td>                                    
                                </tr>
                            </tbody>                            
                        </table>
                        <button type="button" class="btn btn-outline-danger">Tiếp tục mua hàng</button>        
                    </div>
                    <div class="btnMuaHang">

                    </div>
                </div>
                <!-- Chi tiết hóa đơn -->
                <div class="col-4 p-4 align-items-center orderdetail-title">
                    <div class="orderdetail">
                        <p>CHI TIẾT HÓA ĐƠN</p>
                    </div>                    
                    <b style="font-size: 18px;"><u>Sản phẩm :</u></b>
                                        
                    <div class="d-flex banggia">
                        <div class="product-name">Sản phẩm 1</div>
                        <div class="price">1000$</div>
                    </div>
                    <div class="d-flex banggia">
                        <div class="product-name">Sản phẩm 1</div>
                        <div class="price">1000$</div>
                    </div>
                    <div class="d-flex banggia">
                        <div class="product-name">Sản phẩm 1</div>
                        <div class="price">1000$</div>
                    </div><hr>
                    <div class="d-flex banggia">
                        <div class="product-name">Khuyến mãi</div>
                        <div class="price">0$</div>
                    </div> <hr>
                    <div class="d-flex banggia">
                        <div class="product-name">Thành tiền</div>
                        <div class="price">3000$</div>
                    </div>
                    <div class="d-flex justify-content-center mt-5"><button type="button" class="btn btn-outline-danger">THANH TOÁN</button></div>                        
                </div>
            </div>
        </div>
    </div>
    <%@include file="/view/template/footer.jsp" %>
</body>
</html>
