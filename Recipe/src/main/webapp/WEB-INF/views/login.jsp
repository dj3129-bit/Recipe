<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<div>
		<div><h3>로그인</h3></div>
		
		<div>
			<form method="post">
				<div>
					<div><label>아이디:</label></div>
					<div><input type="text" name="id"></div>
				</div>
				
				<div>
					<div><label>비밀번호:</label></div>
					<div><input type="password" name="password"></div>
				</div>
				
				<div>
					<div><button type="submit">로그인</button></div>
				</div>
			</form>
		</div>
		<div>
			<div><a href="findid"><button>아이디/비밀번호 찾기</button></a></div>
			<div><a href="signup"><button>회원가입</button></a></div>
		</div>
	</div>
</body>
</html>