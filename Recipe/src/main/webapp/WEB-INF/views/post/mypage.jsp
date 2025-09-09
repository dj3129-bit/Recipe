<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<body>
	<div>
		<div id="photo"></div>
		<label id="nickname"></label>
		<button type="button"></button>
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
		<h2>즐겨찾기 레시피</h2>
		<ul></ul>
	</div>
		<h2>내가 작성한 레시피</h2>
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
						<button><a href="update">수정</a></button>
						<button><a href="delete">삭제</a></button>
					</div>
					<h3>${item.recipetitle}</h3>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>