<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
</head>
<body>
	<div class="profile">
		<div id="photo"></div>
		<label id="nickname"></label>
		<div><a href="${pageContext.request.contextPath}/user/update/${item.userid}"><button type="button">회원정보 수정</button></a></div>
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
		<h3>즐겨찾기 레시피</h3>
		<ul></ul>
	</div>
		<h3>내가 작성한 레시피</h3>
		<div>
			<c:if test="${list.size() < 1}">
				<ul>
					<li colspan="5">게시글이 없습니다</li>
				</ul>
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
					<h3>${item.recipetitle}</h3>
				</div>
			</c:forEach>
		</div>
	</div>
	<div><a href="${pageContext.request.contextPath}/user/question"><button type="button">문의작성</button></a></div>
	
<script src="${pageContext.request.contextPath}/resources/js/delete.js"></script>
</body>
</html>