<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관 동의</title>
<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
	<div>
		<h1>회원가입</h1>		
	</div>
	
	<div>
		<button class="checked"></button>
		<label>전체동의</label>
	</div>
	
	<div>
		<button class="checked"></button>
		<label>레시피 사이트 이용약관 동의(필수)</label>
	</div>
	<div>
		<button class="checked"></button>
		<label>개인정보 수집이용 동의(필수)</label>
	</div>
	<div>
		<button class="checked"></button>
		<label>개인정보 제3자 제공 동의(선택)</label>
	</div>
	<div>
		<button class="checked"></button>
		<label>마케팅 정보, 메일, SMS 수신 동의(선택)</label>
	</div>
	<div>
		<div><a href="."><button>이전</button></a></div>
		<div><a href="signup"><button>다음으로</button></a></div>
	</div>
</body>
</html>