<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
	<div class="row">
		<div><h3>로그인</h3></div>
		<hr class="border border-dark border-3 opacity-100 w-80">
		
		<div class="col-4"></div>
		<div class="col">
			<c:if test="${not empty loginError}">
        		<div style="color:red;">${loginError}</div>
    		</c:if>
			
			<div><p>사이트 로고</p></div>
			<form method="post" class="row g-3">
				<div class="col-12">
					<div><input type="text" name="userid" placeholder="아이디" class="custom-input w-100 rounded-pill"></div>
				</div>

				<div class="col-12">
					<div><input type="password" name="userpw" placeholder="비밀번호" class="custom-input w-100 rounded-pill"></div>
				</div>

				<div>
					<div class="text-center"><button type="submit" class="btn btn-secondary btn-lg rounded-pill" style="width: 200px; height: 65px;">로그인</button></div>
				</div>
			</form>
		</div>
		<div class="col-4"></div>
		<div>
			<div class="text-center"><a href="findid"><button>아이디/비밀번호 찾기</button></a></div>
			<div class="text-center"><a href="signup"><button>회원가입</button></a></div>
		</div>
	</div>
</body>
</html>