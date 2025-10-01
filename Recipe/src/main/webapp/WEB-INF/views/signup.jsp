<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
	<div>
		<div>
			<h3>회원가입</h3>		
		</div>
		<hr class="border border-dark border-3 opacity-100 w-80">
		
		<div class="row">
			<div class="col-4"></div>
			<div class="col">
				<form method="post" name="signup_form">
					<div class="d-flex">
						<div class="lbbox"><label class="label">아이디</label></div>
						<div><input type="text" name="userid" id="userid" class="custom-input custom-rounded fs-3" style="width: 300px; border-radius: 15px;"></div> 
						<div>
							<button type="button" id="checkid" class="custom-rounded" style="width: 100px; height: 45px; border-radius: 15px;">중복확인</button>
						</div>
					</div>
					
					<div class="d-flex">
						<div class="lbbox"><label class="label">비밀번호</label></div>
						<div><input type="password" name="userpw" class="custom-input custom-rounded fs-3" style="width: 300px; border-radius: 15px;"></div>
					</div> 
					
					<div class="d-flex">
						<div class="lbbox"><label class="label">비밀번호 확인</label></div>
						<div><input type="password" name="checkuserpw" class="custom-input custom-rounded fs-3" style="width: 300px; border-radius: 15px;"></div>
						<div><button type="button" id="checkpw" class="custom-rounded" style="width: 100px; height: 45px; border-radius: 15px;">확인</button></div>
					</div>
					
					<div class="d-flex">
						<div class="lbbox"><label class="label">성명</label></div>
						<div><input type="text" name="username" class="custom-input custom-rounded fs-3" style="width: 300px; border-radius: 15px;"></div>
					</div>
					
					<div class="d-flex">
						<div class="lbbox"><label class="label">닉네임</label></div>
						<div><input type="text" name="nickname" class="custom-input custom-rounded fs-3" style="width: 300px; border-radius: 15px;"></div>
					</div>
					
					<div class="d-flex">
						<div class="lbbox"><label class="label">휴대폰번호</label></div>
						<div><input type="text" name="usertel" class="custom-input custom-rounded fs-3" style="width: 300px; border-radius: 15px;"></div>
					</div>
					
					<div class="d-flex">
						<div class="lbbox"><label class="label">이메일</label></div>
						<div><input type="text" name="emailid" class="custom-input custom-rounded fs-3" style="width: 180px; border-radius: 15px;"></div>
						<p style="font-size: 30px;">@</p>
						<select name="domain" class="custom-rounded fs-4" style="width: 150px; height: 50px; border-radius: 15px;">
							<option>naver.com</option>
							<option>hanmail.net</option>
							<option>gmail.com</option>
							<option>naver.com</option>
							<option>kakao.com</option>
							<option>naver.com</option>
							<option>직접 입력</option>
						</select>
					</div>
					
					<div class="d-flex">
						<div class="btnsu"><button type="button" id="signup" class="fs-3 rounded-pill" style="width: 200px; height: 65px;">회원가입</button></div>
						<div class="text-end"><a href="."><button type="button" class="fs-3 rounded-pill" style="width: 200px; height: 65px;">취소</button></a></div>
					</div>
				</form>		
			</div>
			<div class="col-4"></div>
		</div>
	</div>
	
<script src="${pageContext.request.contextPath}/resources/js/checkid.js"></script>
</body>
</html>