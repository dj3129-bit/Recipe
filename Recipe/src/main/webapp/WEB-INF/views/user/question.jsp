<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의</title>
</head>
<body>
	<form method="post">
		<h3>1:1 문의</h3>
		<div>
			<input type="text" name="questiontitle" placeholder="제목">
			<input type="textarea" name="questioncontent" placeholder="문의 내용">
			<div>
				<input type="checkbox" name="ischecked">
				<label>비밀글</label>
			</div>
			<div>
				<p>사진 첨부</p>
				<div><button type="button"></button></div>
			</div>
		</div>
		<div><a href=""><button type="submit">등록</button></a></div>
	</form>
</body>
</html>