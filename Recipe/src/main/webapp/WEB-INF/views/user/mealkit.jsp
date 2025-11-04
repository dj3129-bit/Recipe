<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트 전용 라운지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mealkit.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<nav>
	<div class="recrecipe"><a href="/">추천 레시피</a></div>
	<div><a href="/post/hotpost">HOT 레시피</a></div>
	<div><a href="/post/chef">BEST 셰프</a></div>
	<div><a href="/user/mealkit"><i class="fa-regular fa-gem"></i>밀키트 전용 라운지</a></div>
	<div><a href="/user/usercenter">고객센터</a></div>
</nav>
<main>
	<div class="container">
		<h3 class="navtitle">추천 밀키트</h3>
		<div class="recdiv">
			<div class="arrow"><i class="bi bi-chevron-compact-left" style="font-size: 4rem;"></i></div>
			<c:forEach var="item" items="${list}" begin="0" end="2">
				<div class="recmeal">
					<div class="recphoto">
						<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 100%; height: 100%; object-fit: cover;">
					</div>
					<div class="reccontent">
						<div>
							<h3>${item.kititle}</h3>
							<p>${item.kitintroduce}</p>
						</div>
						<div class="cook">
							<p><i class="bi bi-bookmark"></i>한식</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : ${item.recommend}</p>
						</div>
						<div>태그명</div>
						<div class="detail"><a href="#"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>
				</div>
			</c:forEach>
			<div class="arrow"><i class="bi bi-chevron-compact-right" style="font-size: 4rem;"></i></div>
		</div>
		
		<h3 class="navtitle">가성비 간편 밀키트</h3>
		<div class="easydiv">
			<div class="arrow"><i class="bi bi-chevron-compact-left" style="font-size: 4rem;"></i></div>
			<c:forEach var="item" items="${list}" begin="0" end="2">
				<div class="easymeal">
					<div class="easyphoto">
						<img src="#" style="width: 100%; height: 100%; object-fit: cover;">
					</div>
					<div class="easycontent">
						<div>
							<h3>밀키트명</h3>
							<p>밀키트 소개</p>
						</div>
						<div class="cook">
							<p><i class="bi bi-bookmark"></i>카테고리이름</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : </p>
						</div>
						<div>태그명</div>
						<div class="detail"><a href="#"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>
				</div>
			</c:forEach>
			<div class="arrow"><i class="bi bi-chevron-compact-right" style="font-size: 4rem;"></i></div>
		</div>
		
		<h3 class="navtitle">다이어트용/채식 밀키트</h3>
		<div class="dietdiv">
			<div class="arrow"><i class="bi bi-chevron-compact-left" style="font-size: 4rem;"></i></div>
			<c:forEach var="item" items="${list}" begin="0" end="2">
				<div class="dietmeal">
					<div class="dietphoto">
						<img src="#" style="width: 100%; height: 100%; object-fit: cover;">
					</div>
					<div class="dietcontent">
						<div>
							<h3>밀키트명</h3>
							<p>밀키트 소개</p>
						</div>
						<div class="cook">
							<p><i class="bi bi-bookmark"></i>카테고리이름</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : </p>
						</div>
						<div>태그명</div>
						<div class="detail"><a href="#"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>
				</div>
			</c:forEach>
			<div class="arrow"><i class="bi bi-chevron-compact-right" style="font-size: 4rem;"></i></div>
		</div>
		
		<h3 class="navtitle">단백질 듬뿍 헬스용 밀키트</h3>
		<div class="healthdiv">
			<div class="arrow"><i class="bi bi-chevron-compact-left" style="font-size: 4rem;"></i></div>
			<c:forEach var="item" items="${list}" begin="0" end="2">
				<div class="healthmeal">
					<div class="healthphoto">
						<img src="#" style="width: 100%; height: 100%; object-fit: cover;">
					</div>
					<div class="healthcontent">
						<div>
							<h3>밀키트명</h3>
							<p>밀키트 소개</p>
						</div>
						<div class="cook">
							<p><i class="bi bi-bookmark"></i>카테고리이름</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : </p>
						</div>
						<div>태그명</div>
						<div class="detail"><a href="#"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>
				</div>
			</c:forEach>
			<div class="arrow"><i class="bi bi-chevron-compact-right" style="font-size: 4rem;"></i></div>
		</div>
	</div>
</main>
</body>
</html>