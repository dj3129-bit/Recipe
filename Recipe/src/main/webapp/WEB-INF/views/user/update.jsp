<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
	<div>
		<div>
			<h3>회원정보 수정</h3>		
		</div>
		<hr class="border border-dark border-3 opacity-100 w-80">
		
		<div class="row">
			<div class="col-4"></div>
			<div class="col">
				<div class="d-flex">
					<div class="lbbox"><label class="label">성명</label></div>
					<div><input type="text" name="username" value="${item.username}" class="custom-input rounded-pill fs-3"></div>
				</div>
							
				<div class="d-flex">
					<div class="lbbox"><label class="label">닉네임</label></div>
					<div><input type="text" name="nickname" value="${item.nickname}" class="custom-input rounded-pill fs-3"></div>
					<div><button type="button" class="fs-5 rounded-pill checknick" style="width: 170px; height: 45px;">중복확인 체크</button></div>
				</div>
							
				<div class="d-flex">
					<div class="lbbox"><label class="label">휴대폰번호</label></div>
					<div><input type="text" name="usertel" value="${item.usertel}" class="custom-input rounded-pill fs-3"></div>
					<div><button type="button" class="fs-5 rounded-pill auth1" style="width: 130px; height: 45px;">인증</button></div>
				</div>
							
				<div class="d-flex">
					<div class="lbbox"><label class="label">이메일</label></div>
					<div><input type="text" name="useremail" value="${item.useremail}" class="custom-input rounded-pill fs-3"></div>
					<div><button type="button" class="fs-5 rounded-pill auth2" style="width: 130px; height: 45px;">인증</button></div>
				</div>
				<div class="d-flex btnbox">
					<div class="userout">
						<button type="button" class="fs-5 rounded-pill" style="width: 130px; height: 45px;" data-bs-toggle="modal" data-bs-target="#userout">회원 탈퇴</button>
					</div>
					<div><a href="${pageContext.request.contextPath}/user/changepw/${userid}"><button class="fs-5 rounded-pill" style="width: 170px; height: 45px;">비밀번호 변경</button></a></div>
				</div>
				<div>
					<div class="logout"><a href="logout" class="logoutlink"><button class="fs-5 rounded-pill" style="width: 170px; height: 65px;">로그아웃</button></a></div>
				</div>
			</div>
			<div class="col-4"></div>
		</div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade modal-lg" id="userout" tabindex="-1" aria-labelledby="useroutModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="useroutModalLabel">정말 탈퇴하시겠어요?</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
		      	<p>탈퇴 버튼 선택 시, 계정 및 데이터는 삭제되며 복구되지 않습니다.</p>
		      	<p>탈퇴 사유가 궁금해요.</p>
		      	<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					  탈퇴 사유
					</button>
					
					<ul class="dropdown-menu">
					  <li><a class="dropdown-item" href="#">새 계정 생성</a></li>
					  <li><a class="dropdown-item" href="#">서비스 불만 및 불편함</a></li>
					  <li><a class="dropdown-item" href="#">서비스 이용 빈도가 낮음</a></li>
					  <li><a class="dropdown-item" href="#">개인정보 우려</a></li>
					  <li><a class="dropdown-item" href="#">기능 부족</a></li>
					</ul>
				</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        <form method="post" action="/user/userout">
	        	<button type="submit" class="btn btn-primary outbtn">회원 탈퇴</button>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<script>
const dropdown = document.querySelector('.dropdown-toggle')
const dropdownItem = document.querySelectorAll('.dropdown-item')

dropdownItem.forEach(function(item) {
    item.addEventListener('click', function(e) {
      e.preventDefault(); // 링크 이동 방지
      const selectedText = this.textContent;
      dropdown.textContent = selectedText;
    });
});
</script>
</body>
</html>