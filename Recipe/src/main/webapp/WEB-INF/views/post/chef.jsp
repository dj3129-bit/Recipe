<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셰프 목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/chef.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<nav>
	<div class="nav1"><a href="/">추천 레시피</a></div>
	<div class="nav2"><a href="/post/hotpost">HOT 레시피</a></div>
	<div><a href="/post/chef">BEST 셰프</a></div>
	<div><a href="/user/mealkit">밀키트 전용 라운지</a></div>
	<div><a href="/user/usercenter">고객센터</a></div>
</nav>	
<div class="container">
	<div><h3>팔로워순 요리사 목록</h3></div>
		
	<div>
		<ul>
			<li>
				<p>1</p>
				<div class="profile"></div>
				<p>셰프명1</p>
				<p>팔로워수</p>
				<p>조회수</p>
				<button type="button" class="following"><i class="bi bi-plus"></i>팔로잉</button>
			</li>
			<li>
				<p>2</p>
				<div class="profile"></div>
				<p>셰프명2</p>
				<p>팔로워수</p>
				<p>조회수</p>
				<button type="button" class="following"><i class="bi bi-plus"></i>팔로잉</button>
			</li>
			<li>
				<p>3</p>
				<div class="profile"></div>
				<p>셰프명3</p>
				<p>팔로워수</p>
				<p>조회수</p>
				<button type="button" class="following"><i class="bi bi-plus"></i>팔로잉</button>
			</li>
			<li>
				<p>4</p>
				<div class="profile"></div>
				<p>셰프명4</p>
				<p>팔로워수</p>
				<p>조회수</p>
				<button type="button" class="following"><i class="bi bi-plus"></i>팔로잉</button>
			</li>
			<li>
				<p>5</p>
				<div class="profile"></div>
				<p>셰프명5</p>
				<p>팔로워수</p>
				<p>조회수</p>
				<button type="button" class="following"><i class="bi bi-plus"></i>팔로잉</button>
			</li>
			<li>
				<p>6</p>
				<div class="profile"></div>
				<p>셰프명6</p>
				<p>팔로워수</p>
				<p>조회수</p>
				<button type="button" class="following"><i class="bi bi-plus"></i>팔로잉</button>
			</li>
		</ul>
	</div>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>