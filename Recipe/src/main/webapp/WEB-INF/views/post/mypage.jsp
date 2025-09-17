<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
<script src="https://kit.fontawesome.com/70bb3411ef.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="profile">
			<div id="photo"></div>
			<i class="fa-solid fa-circle-user" style="font-size: 150px;"></i>
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
		</div>
		<div class="recipe">
			<div>
				<h3>즐겨찾기 레시피</h3>
				<ul></ul>
			</div>
			<div class="userecipe">
				<h3>내가 작성한 레시피</h3>
				<c:if test="${list.size() < 1}">
					<ul><li colspan="5">게시글이 없습니다</li></ul>
				</c:if>
							
				<c:forEach var="item" items="${list}">
					<div>
						<div>
							<img src="">
							<li>${item.recipeviews}</li>
							<li>${item.recommend}</li>
							<a href="update/${item.recipeid}"><button>수정</button></a>
							<a href="delete/${item.recipeid}" id="del"><button>삭제</button></a>
						</div>
						<h3><a href="detail/${item.recipeid}">${item.recipetitle}</a></h3>
					</div>
				</c:forEach>
			</div>
		</div>
		<div><a href="${pageContext.request.contextPath}/user/question"><button type="button">문의작성</button></a></div>
	</div>
	
<script src="${pageContext.request.contextPath}/resources/js/delete.js"></script>
</body>
</html>