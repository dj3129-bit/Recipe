<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<style>
nav{
	display: flex;
	background-color: darkred;
	height: 65px;
	justify-content: center;
	gap: 200px;
	align-items: center;
}
nav div a{
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
	color: #fff;
	text-decoration: none;
}
.headerbox form{
	width: 30% !important;
}
.hotcontent{
	padding: 10px;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<nav>
	<div class="recrecipe"><a href="/">추천 레시피</a></div>
	<div><a href="/post/hotpost">HOT 레시피</a></div>
	<div><a href="/post/chef">BEST 셰프</a></div>
	<div><a href="/user/usercenter">고객센터</a></div>
</nav>

<div class="container" style="margin: 30px auto;">
	<c:forEach var="item" items="${results}">
		<div class="hotdiv2">
			<div class="hotphoto">
				<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 100%; height: 100%; object-fit: cover;">
			</div>
			<div class="hotcontent">
				<div>
					<h3>${item.recipetitle}</h3>
					<p>${item.introduce}</p>
				</div>
				<div class="cook">
					<p><i class="bi bi-clock"></i>요리 시간</p>
					<p><i class="bi bi-bookmark"></i>${item.maincategoryname}</p>
					<p id="recup"><i class="bi bi-hash"></i>추천수 : ${item.recommend}</p>
				</div>
				<div>재료 : </div>
				<div class="detail"><a href="/post/detail/${item.recipeid}"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
			</div>
		 </div>
	</c:forEach>
</div>
</body>
</html>