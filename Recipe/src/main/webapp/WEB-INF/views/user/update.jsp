<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/userupdate.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
	<div>
		<div>
			<h3>회원정보 수정</h3>		
		</div>
		<hr class="border border-dark border-3 opacity-100 w-80">
		
		<div class="row">
			<div class="col-4"></div>
			<div class="col">
				<div class="d-flex">
					<div class="lbbox"><label class="label">성명</label></div>
					<div><input type="text" name="username" value="${item.username}" class="custom-input rounded-pill fs-3"></div>
				</div>
							
				<div class="d-flex">
					<div class="lbbox"><label class="label">닉네임</label></div>
					<div><input type="text" name="nickname" value="${item.nickname}" class="custom-input rounded-pill fs-3"></div>
					<div><button type="button" class="fs-5 rounded-pill checknick" style="width: 170px; height: 45px;">중복확인 체크</button></div>
				</div>
							
				<div class="d-flex">
					<div class="lbbox"><label class="label">휴대폰번호</label></div>
					<div><input type="text" name="usertel" value="${item.usertel}" class="custom-input rounded-pill fs-3"></div>
					<div><button type="button" class="fs-5 rounded-pill auth1" style="width: 130px; height: 45px;">인증</button></div>
				</div>
							
				<div class="d-flex">
					<div class="lbbox"><label class="label">이메일</label></div>
					<div><input type="text" name="useremail" value="${item.useremail}" class="custom-input rounded-pill fs-3"></div>
					<div><button type="button" class="fs-5 rounded-pill auth2" style="width: 130px; height: 45px;">인증</button></div>
				</div>
				<div class="d-flex btnbox">
					<div class="userout"><a href="userout"><button class="fs-5 rounded-pill" style="width: 130px; height: 45px;">회원 탈퇴</button></a></div>
					<div><a href="updatepw"><button class="fs-5 rounded-pill" style="width: 170px; height: 45px;">비밀번호 변경</button></a></div>
				</div>
				<div>
					<div class="logout"><a href="logout" class="logoutlink"><button class="fs-5 rounded-pill" style="width: 170px; height: 65px;">로그아웃</button></a></div>
				</div>
			</div>
			<div class="col-4"></div>
		</div>
	</div>
</body>
</html>