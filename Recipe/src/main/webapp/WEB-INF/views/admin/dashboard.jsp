<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 대시보드</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
.adminbox{
	border: 1px solid #000;
	padding: 10px;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<div class="container" style="width: 70%; margin: 0 auto; display: flex; gap: 50px;">
	<div class="adminbox">
		<h4><strong>관리자 대시보드</strong></h4>
		<p>총 회원 수: </p>
		<p>총 게시글 수: </p>
		<p>일일 발문자 수: </p>
		<p><a href="#">유입경로 분석</a></p>
		<p><a href="/admin/userlist">사용자 목록</a></p>
		<p><a href="/user/list">문의 목록</a></p>
	</div>
	<div class="adminbox">
		<h4><strong>추가해야 할 관리자 기능</strong></h4>
		<p>불순한 게시글 삭제</p>
		<p>문의 목록 관리자만 볼 수 있도록 설정</p>
		<p>문의 답변</p>
		<p>공지사항 수정</p>
		<p>신고된 컨텐츠 처리</p>
		<p>알림 발송(?)</p>
	</div>
	<div>
		<h4><strong>공지사항 작성</strong></h4>
		<div class="row">
		
		<div class="col-4"></div>
		<div class="col">
			<form method="post">
				<div>
					<div class="ntitle">
						<input type="text" name="notifytitle" placeholder="제목" class="custom-input rounded fs-3" style="width: 640px; margin-bottom: 20px;">
					</div>
					<div>
						<textarea name="message" placeholder="공지 내용" class="custom-input rounded fs-3" 
						style="width: 640px; height: 350px; vertical-align: top; padding: 10px; margin-bottom: 20px;"></textarea>
					</div>
					<div style="margin-bottom: 20px;">
						<select name="type">
							<option value="NORMAL">일반</option>
							<option value="REPLY">답글</option>
							<option value="IMPORTANT">중요/긴급</option>
						</select>
					</div>
				</div>
				<div class="submitbtn">
					<button type="submit" class="fs-5 rounded-pill" style="width: 130px; height: 45px;">등록</button>
				</div>
			</form>
		</div>
		<div class="col-4"></div>
	</div>
	</div>
</div>

</body>
</html>