<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="http://localhost:8080/i8-web/resources/adminassets/css/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="http://localhost:8080/i8-web/resources/adminassets/css/bootstrap/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="http://localhost:8080/i8-web/resources/adminassets/reset.css"
	rel="stylesheet" type="text/css" />
<link
	href="http://localhost:8080/i8-web/resources/adminassets/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="http://localhost:8080/i8-web/resources/adminassets/js/jquery-2.2.4.min.js"
	type="text/javascript"></script>
<script
	src="http://localhost:8080/i8-web/resources/adminassets/js/bootstrap/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="http://localhost:8080/i8-web/resources/adminassets/js/plugins/ckeditor/ckeditor.js"
	type="text/javascript"></script>
<script
	src="http://localhost:8080/i8-web/resources/adminassets/js/main.js"
	type="text/javascript"></script>
<link
	href="http://localhost:8080/i8-web/resources/adminassets/css/import/register.css"
	rel="stylesheet">

<div class="wrapper fadeInDown">
	<div id="formContent">
		<!-- Tabs Titles -->

		<!-- Icon -->
		<div class="fadeIn first">
			<img src="/i8-web/resources/assets/images/shipperlogo.png">
		</div>

		<!-- Login Form -->
		<form action="/i8-web/shipper/sign" method="post">
			<input type="text" id="login" class="fadeIn second" name="name" placeholder="Tên Người Dùng"> 
			<input type="email" id="login" class="fadeIn second" name="email" required placeholder="Email"> 
			<input type="text" id="login" class="fadeIn second" name="username" pattern=".{6,}" required title="Tên tài khoản phải có ít nhất 6 ký tự" placeholder="Tên Tài Khoản"> 
			<input type="password" id="password" class="fadeIn third" name="password" pattern=".{8,}" required title="Mật khẩu phải có ít nhất 8 ký tự" placeholder="Mật Khẩu">
			<input type="submit" class="fadeIn fourth" value="Sign In">
		</form>
		<c:if test="${ isError != ''}">
			<h1 class="error-message-login">${ isError }</h1>
		</c:if>
		<!-- Remind Passowrd -->
		<div id="formFooter">
			<a class="underlineHover" href="/i8-web/shipper">Đã có tài khoản</a>
		</div>

	</div>
</div>