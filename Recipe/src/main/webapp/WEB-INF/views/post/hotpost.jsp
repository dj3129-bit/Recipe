<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOT 레시피</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<hr style="width: 100%; border:1px solid #000;">
<div class="container" style="width: 70%;">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		  <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" aria-current="page" type="button">추천순</button>
		</li>
		<li class="nav-item">
		  <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button">조회순</button>
		</li>
	</ul>
	
	<div class="tab-content" id="myTabContent">
	  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
	  	<div class="hot">
	  	   <c:forEach var="item" items="${recommendList}" begin="0" end="9">
				<div class="hotdiv">
					<div class="hotphoto">
						<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 100%; height: 100%; object-fit: cover;">
					</div>
					<div class="hotcontent">
						<div>
							<h3>${item.recipetitle}</h3>
							<p>${item.introduce}</p>
						</div>
						<div class="cook">
							<p><i class="bi bi-clock"></i>요리 시간</p>
							<p><i class="bi bi-bookmark"></i>요리 종류</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : ${item.recommend}</p>
						</div>
						<div>재료 : </div>
						<div class="detail"><a href="/post/detail/${item.recipeid}"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>
				</div>
			</c:forEach>
		</div>
	  </div>
	  
	  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="1">
	  	<div class="hot">
	  	   <c:forEach var="item" items="${viewList}" begin="0" end="9">
				<div class="hotdiv">
					<div class="hotphoto">
						<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 100%; height: 100%; object-fit: cover;">
					</div>
					<div class="hotcontent">
						<div>
							<h3>${item.recipetitle}</h3>
							<p>${item.introduce}</p>
						</div>
						<div class="cook">
							<p><i class="bi bi-clock"></i>요리 시간</p>
							<p><i class="bi bi-bookmark"></i>요리 종류</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : ${item.recommend}</p>
						</div>
						<div>재료 : </div>
						<div class="detail"><a href="/post/detail/${item.recipeid}"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>
				</div>
			</c:forEach>
		</div>
	  </div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>