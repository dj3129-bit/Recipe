<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>

</head>
<body>
	<div>
		<div>
			<h3>회원가입</h3>		
		</div>
		
		<div>
			<form method="post" name="signup_form">
				<div>
					<div><label>아이디:</label></div>
					<div><input type="text" name="userid" id="userid"></div> 
					<div>
						<button type="button" id="checkid">중복확인</button>
					</div>
				</div>
				
				<div>
					<div><label>비밀번호:</label></div>
					<div><input type="password" name="userpw"></div>
				</div>
				
				<div>
					<div><label>비밀번호 확인:</label></div>
					<div><input type="password" name="checkuserpw"></div>
					<div><button type="button" id="checkpw">확인</button></div>
				</div>
				
				<div>
					<div><label>성명:</label></div>
					<div><input type="text" name="username"></div>
				</div>
				
				<div>
					<div><label>닉네임:</label></div>
					<div><input type="text" name="nickname"></div>
				</div>
				
				<div>
					<div><label>휴대폰번호:</label></div>
					<div><input type="text" name="usertel"></div>
				</div>
				
				<div>
					<div><label>이메일</label></div>
					<div><input type="text" name="useremail"></div>
				</div>
				
				<div>
					<div><button type="button" id="signup">회원가입</button></div>
					<div><a href="."><button type="button">취소</button></a></div>
				</div>
			</form>		
		</div>
	</div>
	
<script src="${pageContext.request.contextPath}/resources/js/checkid.js"></script>
</body>
</html>