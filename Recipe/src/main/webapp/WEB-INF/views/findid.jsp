<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="bg-area change_box">
	<form id="findid" name="findid" method="post">
		<legend>아이디찾기</legend>
		<div class="change_inp">
			<div>
				<input type="email" name="userNm" class="form-control" id="exampleFormControlInput1" placeholder="실명을 입력하세요."/>
			</div>
			<div>
				<input type="email" name="emailAdres" class="form-control" id="exampleFormControlInput1" placeholder="가입시 입력한 이메일을 입력하세요.."/>
			</div>
		</div>
		<div><a href=""><button>아이디 찾기</button></a></div>
	</form>
</div>
</body>
</html>