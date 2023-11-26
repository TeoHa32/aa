<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.User" %>
 <div id="header">
            <div class="logo"><a href="login.jsp"><img src="<%if( request.getContextPath()!=null) out.print(request.getContextPath()); %>/view/image/logo.png" alt=""></a></div>
            <div class="header-menu">
                <ul class="menu">
                    <li><a href="index.jsp">Trang chủ</a></li>
                    <li><a href="">Giới thiệu</a></li>
                    <li><a href="">liên hệ</a></li>
                    <li><a href="product.jsp">Sản phẩm</a></li>
                </ul>
            </div>
            <div class="header-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" name="search" placeholder="Nhập thông tin tìm kiếm...">
            </div>
            <div class="header-right">
                <div class="shopping-cart"><a href=""><i class="fa-solid fa-cart-shopping"></i></a></div>
                <%
                	HttpSession s = request.getSession();
                if(s!=null ){
                	if(s.getAttribute("user")!=null){
                		User u = (User) s.getAttribute("user");
                		out.print("<div class='user'>");
                		out.print("<div class='username' onclick='toggleDropdown()'><span>"+u.getName()+"</span> <i class='fa-solid fa-caret-down'>"+"</i></div>");
                		out.print("<div id='myDropdown' class='dropdown-content'>");
                		out.print("<div class='user-content'><span><a href='#'>Tài khoản</a></span> <i class='fa-solid fa-user'></i></div>");
                		out.print("<div class='user-content'><span><a href='#'>Đăng xuất</a></span><i class='fa-solid fa-right-from-bracket'></i></div>");
                		out.print("</div>");
                		out.print("</div>");
                		        
                	}
                	else{
                		out.print("<div class='user'><a href=''> <i class='fa-regular fa-user'></i></a></div>");
                	}
                	
                }
                
                %>
            </div>
        </div>
        </div>
    <% 
        out.print("<div id='myDropdown' class='dropdown-content'>");
                		out.print("<div><a href='#'>Thông tin tài khoản</a></div>");
                		out.print("<div><a href='#'>Đăng xuất</a></div>'");
                		out.print("</div>");
       %> 
    