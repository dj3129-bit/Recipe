<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RecipeHeader</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
</head>
<body>
	<div class="headerbox">
		<h1><a href="/">레시피 로고</a></h1>
		<input type="text" name="q" class="headinput">	
		<button type="submit" class="headbtn">검색</button>
		
		<c:if test="${sessionScope.recipeuser == null}">
			<div class="libox">
				<a href="login">
					<i class="bi bi-person fs-2"></i>
					<p>로그인</p>
				</a>
			</div>
			<div class="lobox">
				<div>
					<a href="agree">
						<i class="bi bi-person-plus fs-2"></i>
						<p>회원가입</p>
					</a>
				</div>
			</div>
		</c:if>
		
		<c:if test="${sessionScope.recipeuser != null}">
			<div class="welcome">
				<p>${sessionScope.recipeuser.nickname}님</p><p>환영합니다</p>
			</div>
			<div class="memberbox">
				<div class="memberchild"><a href="/post/add"><i class="bi bi-pencil-square fs-2"></i><p>레시피 등록</p></a></div>
				<div class="memberchild"><a href="/post/mypage"><i class="bi bi-building fs-2"></i><p>마이 페이지</p></a></div>
				<div class="memberchild"><a href="logout"><i class="bi bi-box-arrow-right fs-2"></i><p>로그아웃</p></a></div>
			</div>
		</c:if>
	</div>
</body>
</html>