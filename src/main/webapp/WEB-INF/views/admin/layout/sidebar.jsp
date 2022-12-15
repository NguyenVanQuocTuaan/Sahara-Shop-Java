<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="sidebar" class="fl-left">
    <ul id="sidebar-menu">
     <li class="nav-item">
            <a href="" title="" class="nav-link nav-toggle">
                <span class="fa fa-database icon"></span>
                <span class="title">Quản lý tài khoản</span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="/i8-web/admin/user/list" title="" class="nav-link">Tài khoản khách hàng</a>
                </li>
            	<li class="nav-item">
                    <a href="/i8-web/admin/shipper/list" title="" class="nav-link">Tài khoản shipper</a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="" title="" class="nav-link nav-toggle">
                <span class="fa fa-product-hunt icon"></span>
                <span class="title">Sản phẩm</span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="/i8-web/admin/product/create" title="" class="nav-link">Thêm mới</a>
                </li>
                <li class="nav-item">
                    <a href="/i8-web/admin/product/list" title="" class="nav-link">Danh sách sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a href="/i8-web/admin/product/category/list" title="" class="nav-link">Danh mục sản phẩm</a>
                </li>
            </ul>
        </li>
         
        <li class="nav-item">
            <a href="" title="" class="nav-link nav-toggle">
                <span class="fa fa-database icon"></span>
                <span class="title">Bán hàng</span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="/i8-web/admin/order/list" title="" class="nav-link">Danh sách đơn hàng</a>
                </li>
            
            </ul>
        <li class="nav-item">
            <a href="" title="" class="nav-link nav-toggle">
                <span class="fa fa-cubes icon"></span>
                <span class="title">Thống kê</span>
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                    <a href="/i8-web/admin/report/product" title="" class="nav-link">Thống kê doanh thu theo sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a href="/i8-web/admin/report/month" title="" class="nav-link">Thống kê doanh thu theo tháng</a>
                </li>
            </ul>
        </li>
    </ul>
</div>
