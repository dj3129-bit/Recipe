<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<nav>
	<div class="recrecipe"><a href="/">추천 레시피</a></div>
	<div><a href="/post/hotpost">HOT 레시피</a></div>
	<div><a href="/post/chef">BEST 셰프</a></div>
	<div><a href="/user/question">고객센터</a></div>
</nav>

	<div>
		<h3>1:1 문의</h3>
	</div>
	<div class="row">
		
		<div class="col-4"></div>
		<div class="col">
			<form method="post" enctype="multipart/form-data">
				<div>
					<div class="qtitle"><input type="text" name="questiontitle" placeholder="제목" class="custom-input rounded fs-3" style="width: 640px;"></div>
					<div>
						<textarea name="questioncontent" placeholder="문의 내용" class="custom-input rounded fs-3" 
						style="width: 640px; height: 350px; vertical-align: top; padding: 10px;"></textarea>
					</div>
					<div>
						<input type="checkbox" name="ischecked">
						<label>비밀글</label>
					</div>
					<div class="photodiv">
						<p>사진 첨부</p>
						<ul id="files" class="photobox"></ul>
						<button type="button" id="photoedit" class="rounded-pill" style="width: 60px; height: 60px;"><i class="bi bi-plus-circle fs-3"></i></button>
					</div>
				</div>
				<div class="submitbtn"><a href=""><button type="submit" class="fs-5 rounded-pill" style="width: 130px; height: 45px;">등록</button></a></div>
			</form>
		</div>
		<div class="col-4"></div>
	</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/js/question.js"></script>
</body>
</html>