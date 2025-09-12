<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Recipe</title>
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<body>
<header>
	<div>
		<c:if test="${sessionScope.recipeuser == null}">
			<div>
				<div><a href="login">로그인</a></div>
			</div>
			<div>
				<div><a href="agree">회원가입</a></div>
			</div>
		</c:if>
		
		<c:if test="${sessionScope.recipeuser != null}">
			<div>
				<div>${sessionScope.recipeuser.nickname}님 환영합니다</div>
				<div><a href="post/add">레시피 등록</a></div>
				<div><a href="goMypage">마이 페이지</a></div>
				<div><a href="logout">로그아웃</a></div>
			</div>
		</c:if>
	
	</div>
	<nav>
		<div><a>추천 레시피</a></div>
		<div><a>HOT 레시피</a></div>
		<div><a>BEST 셰프</a></div>
		<div><a>고객센터</a></div>
	</nav>	
	<div>
		<div>카테고리</div>
		<div><a>종류별</a></div>
		<div><a>상황별</a></div>
		<div><a>인원별</a></div>
		<div><a>방법별</a></div>
		<div><a>재료별</a></div>
	</div>	
</header>
<main>

</main>
</body>
</html>
