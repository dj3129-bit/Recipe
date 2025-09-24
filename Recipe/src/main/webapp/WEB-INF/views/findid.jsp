<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/findid.css">
</head>
<body>
<div class="findheader">
	<div id="findid"><h1>아이디 찾기</h1></div>
	<div id="findpw"><h1>비밀번호 찾기</h1></div>
</div> 
<hr class="border border-dark border-2 opacity-100 w-60">
<div class="bg-area change_box row" style="margin-top: 100px;">
	<div class="col-4"></div>
	<div class="col">
		<form id="idbox" name="findid" method="post" action="findid">
			<div class="col"></div>
			<div class="change_inp">
				<div style="height: 50px; margin-bottom: 40px;">
					<input type="text" name="username" class="form-control fs-4" id="exampleFormControlInput1" placeholder="실명을 입력하세요." 
					style="border: none; border-bottom: 1px solid #ccc;" />
				</div>
				<div style="height: 50px; margin-bottom: 50px;">
					<input type="text" name="useremail" class="form-control fs-4" id="exampleFormControlInput1" 
					placeholder="가입시 입력한 이메일을 입력하세요.." style="border: none; border-bottom: 1px solid #ccc;"/>
				</div>
			</div>
			<div class="text-center"><a href="findresult"><button type="submit" class="fs-4 rounded-pill" style="width: 200px; height: 65px;">아이디 찾기</button></a></div>
		</form>
		<form id="pwbox" name="findpw" method="post">
			<div class="change_inp">
				<div style="height: 50px; margin-bottom: 40px;">
					<input type="text" name="userid" class="form-control fs-4" id="exampleFormControlInput1" placeholder="아이디을 입력하세요." 
					style="border: none; border-bottom: 1px solid #ccc;"/>
				</div>
				<div style="height: 50px; margin-bottom: 40px;">
					<input type="text" name="username" class="form-control fs-4" id="exampleFormControlInput1" placeholder="실명을 입력하세요." 
					style="border: none; border-bottom: 1px solid #ccc;"/>
				</div>
				<div style="height: 50px; margin-bottom: 40px;">
					<input type="text" name="useremail" class="form-control fs-4" id="exampleFormControlInput1" 
					placeholder="가입시 입력한 이메일을 입력하세요.." style="border: none; border-bottom: 1px solid #ccc;"/>
				</div>
			</div>
			<div class="text-center"><a href="completepw"><button type="button" class="fs-4 rounded-pill pwbtn" style="width: 200px; height: 65px;">비밀번호 찾기</button></a></div>
		</form>
	</div>
	<div class="col-4"></div>
</div>

<script src="${pageContext.request.contextPath}/resources/js/findid.js"></script>
</body>
</html>