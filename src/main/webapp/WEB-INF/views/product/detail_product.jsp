<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file = "/WEB-INF/views/layout/header.jsp" %>
<div id="main-content-wp" class="clearfix detail-product-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="/i8-web/trang-chu" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Đầm</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <c:forEach var="item" items="${ ProductId }">
        	<form action="<%=request.getContextPath() %>/gio-hang/additems/${ item.id}" method="post" name="form-cart">	
	            <div class="section" id="detail-product-wp">
	                <div class="section-detail clearfix">
	                    <div class="thumb-wp fl-left">
	                        <a href="" title="" id="main-thumb">
	                            <img id="zoom" src=<c:url value='/resources/assets/images/${item.image }'/> data-zoom-image=${item.image }/>
	                        </a>
	                    </div>
	                    <div class="thumb-respon-wp fl-left">
	                        <img src=${item.image } alt="">
	                    </div>
	                    <div class="info fl-right">
	                        <h3 class="product-name">${item.name }</h3>
	                        <div class="desc">
	                            ${item.description }
	                        </div>
	                        <div class="num-product">
	                            <span class="title">Sản phẩm: </span>
	                            <span class="status">${item.status }</span>
	                        </div>
	                        <p class="price">${item.price_new }</p>
	                        <div id="num-order-wp">
	                            <a title="" id="minus"><i class="fa fa-minus"></i></a>
	                            <input type="text" name="num-order" value="1" id="num-order" >
	                            <a title="" id="plus"><i class="fa fa-plus"></i></a>
	                        </div>
	                        <div class="place-order-wp clearfix" style="display: flex;">
  								<input type="submit" id="order-now" value="Thêm giỏ hàng">
                			</div>
	                    </div>
	                </div>
	            </div>
	            <div class="section" id="post-product-wp">
	                <div class="section-head">
	                    <h3 class="section-title">Mô tả sản phẩm</h3>
	                </div>
	                <div class="section-detail">
	                    ${item.detail }
	                </div>
	            </div>
	            </form>
            </c:forEach>
            <div class="section" id="same-category-wp">
                <div class="section-head">
                    <h3 class="section-title">Cùng chuyên mục</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        <c:forEach var="item" items="${ listMobile }">
								<li><a
									href="/i8-web/chi-tiet-san-pham/${item.slug }?id=${item.id }"
									title="" class="thumb"> <img
										src=<c:url value='/resources/assets/images/${item.image }'/>>
								</a> <a
									href="/i8-web/chi-tiet-san-pham/${item.slug }?id=${item.id }"
									title="" class="product-name">${item.name}</a>
									<div class="price">
										<span class="new">${item.price_new }</span> <span class="old">${item.price_old }</span>
									</div>
									<div class="action clearfix">
										<a href="/i8-web/gio-hang/add/${item.id }" onclick="display()"
											title="Thêm giỏ hàng" class="add-cart fl-left">Thêm giỏ
											hàng</a> <a href="/i8-web/thanh-toan/add/${item.id }" title="Mua ngay"
											class="buy-now fl-right">Mua ngay</a>
									</div></li>
							</c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <div class="sidebar fl-left">
            <div class="section" id="category-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Danh mục sản phẩm</h3>
                </div>
                <div class="secion-detail">
                    <ul class="list-item">
	                    <c:forEach var="item" items="${ listCat }">	
	                        <li>
	                            <a href="/i8-web/${item.slug}?id=${item.id}" title="">${item.name}</a>
	                        </li>
	                      </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="section" id="banner-wp">
                <div class="section-detail">
                    <a href="" title="" class="thumb">
                        <img src="/i8-web/resources/assets/images/banner-3.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file = "/WEB-INF/views/layout/footer.jsp" %>