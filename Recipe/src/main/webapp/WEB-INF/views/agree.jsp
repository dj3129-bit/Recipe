<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>약관 동의</title>
</head>
<body>
	<form method="post">
		<div>
			<h1>회원가입</h1>		
		</div>
		
		<div>
			<input type="checkbox" id="allchecked">
			<label>전체동의</label>
		</div>
		
		<div>
			<input type="checkbox" class="checked" name="required">
			<label>레시피 사이트 이용약관 동의(필수)</label>
		</div>
		<div>
			<input type="checkbox" class="checked" name="required">
			<label>개인정보 수집이용 동의(필수)</label>
		</div>
		<div>
			<input type="checkbox" class="checked">
			<label>개인정보 제3자 제공 동의(선택)</label>
		</div>
		<div>
			<input type="checkbox" class="checked">
			<label>마케팅 정보, 메일, SMS 수신 동의(선택)</label>
		</div>
		<div>
			<div><button type="button" id="next">다음으로</button></div>
		</div>
	</form>
	<div>
		<div><a href="."><button>이전</button></a></div>
	</div>
	
<script src="${pageContext.request.contextPath}/resources/js/agree.js"></script>
</body>
</html>