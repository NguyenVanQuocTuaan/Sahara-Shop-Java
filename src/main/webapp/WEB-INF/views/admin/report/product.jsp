<%@page import="com.i8web.model.Admin.PostsModel"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/admin/layout/header.jsp"%>
<div id="main-content-wp" class="add-cat-page">
	<div class="wrap clearfix">
		<%@include file="/WEB-INF/views/admin/layout/sidebar.jsp"%>
		<div id="content" class="fl-right">
			<div class="section" id="title-page">
				<div class="clearfix">
					<h3 id="index" class="fl-left" style="width: 100%">THỐNG KÊ
						DOANH THU THEO SẢN PHẨM</h3>
				</div>
				<div class="section" id="detail-page">
					<div class="section-detail">
					<form action="" method="POST"> 
						<div class="form-group">
								<label for="title">Danh mục</label>
							<div style = "width:150px;">
								 <select name="kw" style="width:200px">
		                        <option value="0">--Chọn từ khóa--</option>
								<c:forEach var="item" items="${ categoriesProduct }">
								<option value="${item.id }">${item.name}</option>
								</c:forEach>
								</select>
							</div>
		                       
						</div>
		                <div>
		                		<label for="title">Từ thời điểm</label>
		                        <input type="date" name="fromDate" id="title" />  
		                </div>
	                    <div>
	                    		<label for="title" style="margin-top:20px">Đến thời điểm</label>
	                        	<input type="date" name="toDate" id="title" />  
	                    </div>
	                        <div>
	                        	<button type="submit" name="btn-submit" id="btn-submit" style="margin-top:20px;">Báo cáo</button>
	                        </div>    
	                    </form>
                    </div>
                </div>
				<div style="height: 500px; width: 2000px;margin-bottom: 30px;">
					<canvas id="myProductStatsChart"></canvas>
				</div>
				
				
				<table class="table">
					<tr>
						<th>Mã sản phẩm</th>
						<th>Tên sản phẩm</th>
						<th >Doanh thu</th>
					</tr>
					<c:forEach var="item" items="${productRevenue }">
						<tr>
							<td>${item.id }</td>
							<td>${item.name }</td>
							<td>${item.revenue} Đ</td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
 	let productLabels = [], productInfo = [];
 	<c:forEach var="item" items="${productRevenue }">
 		productLabels.push('${item.name }')
		productInfo.push('${item.revenue}')
	</c:forEach>

	window.onload = function() {
		productChart("myProductStatsChart",productLabels,productInfo)
	}
</script>
<%@include file="/WEB-INF/views/admin/layout/footer.jsp"%>