<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 완료</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/findid.css">
</head>
<body>
<div class="findheader">
	<div id="findid"><h1>아이디 찾기</h1></div>
	<div id="findpw"><h1>비밀번호 찾기</h1></div>
</div> 
<hr class="border border-dark border-2 opacity-100 w-60">
<div class="row" style="margin-top: 50px;">
	<div class="col-4"></div>
	<div class="col">
		<div class="text-center findresult" style="margin-bottom: 60px;">
			<c:if test="${not empty userId}">
				<p class="fs-3">회원님의 아이디는</p>
				<p class="fs-3"><strong>${userId}</strong>입니다.</p>
			</c:if>
			<c:if test="${empty userId}">
				<p class="fs-3">입력하신 정보와 일치하는 아이디가 없습니다.</p>
			</c:if>
		</div>
		<div class="d-flex">
			<div><a href="login"><button type="button" class="fs-5 rounded-pill" style="width: 200px; height: 65px;">로그인</button></a></div>
			<div class="ms-auto"><a href="pwsetting"><button class="fs-5 rounded-pill" style="width: 200px; height: 65px;">비밀번호 재설정</button></a></div>
		</div>
	</div>
	<div class="col-4"></div>
</div>
</body>
</html>