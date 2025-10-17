<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<script src="https://kit.fontawesome.com/70bb3411ef.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<hr style="width: 100%; border:1px solid #000;">
	<div class="container">
		<div class="profile">
			<div id="photo">
				<form action="/post/profile" method="post" enctype="multipart/form-data">
					<input type="file" id="inputProfile" name="profilefile" accept="image/*" style="display: none;">
					<button type="button" class="addprofile" onclick="document.getElementById('inputProfile').click();">
						<i class="bi bi-camera" style="font-size: 1.5rem;"></i>
					</button>
				</form>
				<div>
					<c:choose>
				    	<c:when test="${not empty profileImage}">
				      		<img src="${profileImage}" style="width: 100%; height: 100%;">
				    	</c:when>
				    	<c:otherwise>
				      		<img src="${pageContext.request.contextPath}/resources/images/defaultprofile.jpg" style="width: 100%; height: 100%;">
				    	</c:otherwise>
				  	</c:choose>
				</div>
			</div>
			<div class="userinfo">
				<a href="${pageContext.request.contextPath}/user/update/${item.userid}"><button type="button" class="editbtn"><i class="fa-solid fa-pen"></i></button></a>
				<div><label id="nickname">${item.nickname}님</label></div>
			</div>
			<div class="follow">
				<div>
					<p>팔로워</p>
					<p></p>
				</div>
				<div>
					<p>팔로잉</p>
					<p></p>
				</div>
			</div>
		</div>
		<div class="recipe">
			<h3>즐겨찾기 레시피</h3>
			<div class="bookmark">
				<c:if test="${favor.size() < 1}">
					<ul><li colspan="5">게시글이 없습니다</li></ul>
				</c:if>
			
				<c:forEach var="item" items="${favorList}">
					<c:if test="${item.userid == userid}">
						  <li class="imgli">
							<c:choose>
								<c:when test="${not empty item.imagepath}">
									<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 90%; height: 75%; object-fit: cover;">
								</c:when>
								<c:otherwise>
									<img src="${pageContext.request.contextPath}/resources/images/default.webp" style="width: 100%; height: 100%;">
								</c:otherwise>
							</c:choose>
						  </li>
						  <li class="viewli">조회수 : ${item.recipeviews}</li>
						  <li class="rcli">추천수 : ${item.recommend}</li>
						  <li class="editli"><a href="update/${item.recipeid}"><button class="editbtn"><i class="fa-solid fa-pen"></i></button></a></li>
						  <li class="delli"><a href="delete/${item.recipeid}"><button id="del"><i class="fa-solid fa-trash"></i></button></a></li>
				    </c:if>
				</c:forEach>
			</div>
			<h3>내가 작성한 레시피</h3>
			<div class="userecipe">
				<c:if test="${list.size() < 1}">
					<ul><li colspan="5">게시글이 없습니다</li></ul>
				</c:if>
							
				<c:forEach var="item" items="${list}">
					<c:if test="${item.userid == userid}">
						<div>
							<ul class="iteminfo">
								<li class="imgli">
									<c:choose>
										<c:when test="${not empty item.imagepath}">
											<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 90%; height: 75%; object-fit: cover;">
										</c:when>
										<c:otherwise>
											<img src="${pageContext.request.contextPath}/resources/images/default.webp" style="width: 100%; height: 100%;">
										</c:otherwise>
									</c:choose>
								</li>
								<li class="viewli">조회수 : ${item.recipeviews}</li>
								<li class="rcli">추천수 : ${item.recommend}</li>
								<li class="editli"><a href="update/${item.recipeid}"><button class="editbtn"><i class="fa-solid fa-pen"></i></button></a></li>
								<li class="delli"><a href="delete/${item.recipeid}"><button id="del"><i class="fa-solid fa-trash"></i></button></a></li>
							</ul>
							<h3 class="itemtitle"><a href="detail/${item.recipeid}">${item.recipetitle}</a></h3>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
		<div><a href="${pageContext.request.contextPath}/user/question"><button type="button" class="qbtn">문의작성</button></a></div>
	</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/js/delete.js"></script>
<script>
  document.getElementById('inputProfile').addEventListener('change', function() {
    this.form.submit();
  });
</script>
</body>
</html>