<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 장바구니</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<script src="https://kit.fontawesome.com/70bb3411ef.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<hr style="width: 100%; border:1px solid #000;">
	<div class="container">
		<div class="profile">
			<div id="photo">
				<form action="/post/profile" method="post" enctype="multipart/form-data">
					<input type="file" id="inputProfile" name="profilefile" accept="image/*" style="display: none;">
					<button type="button" class="addprofile" onclick="document.getElementById('inputProfile').click();">
						<i class="bi bi-camera" style="font-size: 1.5rem;"></i>
					</button>
				</form>
				<div>
					<c:choose>
				    	<c:when test="${not empty profileImage}">
				      		<img src="${profileImage}" style="width: 100%; height: 100%;">
				    	</c:when>
				    	<c:otherwise>
				      		<img src="${pageContext.request.contextPath}/resources/images/defaultprofile.jpg" style="width: 100%; height: 100%;">
				    	</c:otherwise>
				  	</c:choose>
				</div>
			</div>
			<div class="userinfo">
				<a href="${pageContext.request.contextPath}/user/update/${item.userid}"><button type="button" class="editbtn"><i class="fa-solid fa-pen"></i></button></a>
				<div><label id="nickname">${item.nickname}님</label></div>
			</div>
			<div class="follow">
				<div>
					<p>팔로워</p>
					<p></p>
				</div>
				<div>
					<p>팔로잉</p>
					<p></p>
				</div>
			</div>
			<div>
				<div class="historybox"><a href="/user/list"><button type="button">문의 내역</button></a></div>
				<div class="historybox"><a href="#"><button type="button">장바구니</button></a></div>
				<div class="historybox"><a href="#"><button type="button">내 댓글</button></a></div>
			</div>
		</div>
		<div class="recipe">
			<h3>장바구니</h3>
		</div>
		<div><a href="${pageContext.request.contextPath}/user/question"><button type="button" class="qbtn">문의작성</button></a></div>
	</div>
</body>
</html>