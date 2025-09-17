<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signup.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
	<div>
		<h3>1:1 문의</h3>
		<hr class="border border-dark border-3 opacity-100">
	</div>
	<div class="row">
		
		<div class="col-4"></div>
		<div class="col">
			<form method="post">
				<div>
					<div class="qtitle"><input type="text" name="questiontitle" placeholder="제목" class="custom-input rounded fs-3" style="width: 640px;"></div>
					<div><input type="textarea" name="questioncontent" placeholder="문의 내용" class="custom-input rounded fs-3" style="width: 640px; height: 350px;"></div>
					<div>
						<input type="checkbox" name="ischecked">
						<label>비밀글</label>
					</div>
					<div>
						<p>사진 첨부</p>
						<div><button type="button"></button></div>
					</div>
				</div>
				<div><a href=""><button type="submit" class="fs-5 rounded-pill" style="width: 130px; height: 45px;">등록</button></a></div>
			</form>
		</div>
		<div class="col-4"></div>
	</div>
</body>
</html>