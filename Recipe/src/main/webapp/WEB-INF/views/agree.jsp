<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>약관 동의</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/agree.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>
<body class="agreebody">
	<div>
		<h3>회원가입</h3>		
	</div>
	<hr class="border border-dark border-3 opacity-100 w-80">
	
	<div class="row">
		<div class="col-4"></div>
		<div class="col">
			<form method="post">
				<div class="allchecked">
					<input type="checkbox" id="allchecked" class="round">
					<label class="fs-3 agree">전체동의</label>
				</div>
				
				<div>
					<input type="checkbox" class="checked round" name="required">
					<label class="fs-3 agree">레시피 사이트 이용약관 동의 (필수)</label>
				</div>
				<div>
					<input type="checkbox" class="checked round" name="required">
					<label class="fs-3 agree">개인정보 수집이용 동의 (필수)</label>
				</div>
				<div>
					<input type="checkbox" class="checked round">
					<label class="fs-3 agree">개인정보 제3자 제공 동의 (선택)</label>
				</div>
				<div>
					<input type="checkbox" class="checked round">
					<label class="fs-3 agree">마케팅 정보, 메일, SMS 수신 동의 (선택)</label>
				</div>
				<div class="text-end"><a href="signup">
					<button type="button" class="fs-3 rounded-pill" id="next" style="width: 200px; height: 65px;">다음으로<i class="bi bi-caret-right-fill"></i></button>
				</a></div>
			</form>
		</div>
		<div class="col-4"></div>
	</div>
	<div class="before">
		<div><a href="."><button type="button" class="fs-3 rounded-pill btnbefore" style="width: 200px; height: 65px;"><i class="bi bi-caret-left-fill"></i>이전</button></a></div>
	</div>
	
<script src="${pageContext.request.contextPath}/resources/js/agree.js"></script>
</body>
</html>