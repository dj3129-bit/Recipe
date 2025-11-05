<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트 등록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add.css">
<style>
h1 a{
	display: flex;
}
.headerbox form{
	width: 36% !important;
}
.editbox{
	text-align: right;
	margin-bottom: 100px;
}
.kitedit{
	display: inline-block;
	width: 300px;
	height: 75px;
	border-radius: 15px;
	border: 1px solid #000;
	cursor: pointer;
	background-color: darkred;
	color: white;
	font-size: 25px;
}
</style>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/kitadd">
		<div class="container">
			<div class="info">
				<h2>밀키트 정보</h2>
				<div>
					<h3>밀키트명</h3>
					<input type="text" name="kititle" class="shortext">
				</div>
				<div>
					<h3>밀키트 설명</h3>
					<textarea name="kitintroduce" class="longtext"></textarea>
					<button type="button">이미지 추가</button>
				</div>
				<div style="margin-bottom: 20px;">
					<label for="price">가격:</label>
					<input type="number" name="price" min="0" step="100" inputmode="decimal" class="shortext">
				</div>
				<div>
					<label for="shiprice">배송비:</label>
					<input type="number" name="shiprice" min="0" step="100" inputmode="decimal" class="shortext">
				</div>
			</div>
			<div class="img">
				<div width="200" height="150">
					<h2>밀키트 이미지</h2>
					<ul id="kitfiles"></ul>
					<input type="file" name="kitfile" id="kitfile" accept="image/*" style="display:none;">
					<div><button type="button" id="kitimagedit">추가</button></div>
				</div>
			</div>
		</div>
		<div class="editbox">
			<button type="submit" class="kitedit">밀키트 등록</button>
		</div>
	</form>
<script src="${pageContext.request.contextPath}/resources/js/kitimageadd.js"></script>
</body>
</html>