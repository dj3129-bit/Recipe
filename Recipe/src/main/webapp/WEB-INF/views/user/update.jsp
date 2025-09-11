<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
	<div><label>성명:</label></div>
		<div><input type="text" name="username" value="${item.username}"></div>
	</div>
				
	<div>
		<div><label>닉네임:</label></div>
		<div><input type="text" name="nickname" value="${item.nickname}"></div>
		<div><button type="button">중복확인 체크</button></div>
	</div>
				
	<div>
		<div><label>휴대폰번호:</label></div>
		<div><input type="text" name="usertel" value="${item.usertel}"></div>
		<div><button type="button">인증</button></div>
	</div>
				
	<div>
		<div><label>이메일</label></div>
		<div><input type="text" name="useremail" value="${item.useremail}"></div>
		<div><button type="button">인증</button></div>
	</div>
	<div>
		<div><a href="userout"><button>회원 탈퇴</button></a></div>
		<div><a href="updatepw"><button>비밀번호 변경</button></a></div>
		<div><a href="logout"><button>로그아웃</button></a></div>
	</div>
</body>
</html>