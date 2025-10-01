<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="padding: 50px;">
	<div>
		<h1 style="text-decoration:underline; text-underline-offset: 15px;"><b>비밀번호 재설정하기</b></h1>
	</div>
	<div class="row" style="margin-top: 70px;">
		<div class="col-3"></div>
		<div class="col">
			<form method="post">
				<div style="margin-bottom: 40px;">
					<label style="font-size: 25px; margin-bottom: 20px;"><b>새로운 비밀번호를 입력해주세요</b></label>
					<input type="text" name="newpw" class="custom-rounded fs-3" 
						style="width: 100%; height: 70px; border-radius: 13px; margin-bottom: 15px;">
					<p style="font-size: 20px; color:#717171;">* 8글자이면서 영문자, 숫자, 특수문자를 포함해야 합니다.</p>
				</div>
				<div>
					<label style="font-size: 25px; margin-bottom: 20px;"><b>비밀번호 확인</b></label>
					<input type="text" name="newpw" class="custom-rounded fs-3" 
						style="width: 100%; height: 70px; border-radius: 13px; margin-bottom: 15px;">
					<p style="font-size: 20px; color:#717171;">* 비밀번호를 다시 한번 입력해주세요.</p>
				</div>
				<div class="text-center">
					<button type="submit" class="fs-3 rounded-pill" style="width: 200px; height: 65px;">재설정하기</button>
				</div>
			</form>
		</div>
		<div class="col-3"></div>
	</div>
	
<c:if test="${resetpw}">
  <script>
    alert("비밀번호가 재설정되었습니다.");
  </script>
</c:if>
</body>
</html>