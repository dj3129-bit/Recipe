<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Recipe</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<nav>
	<div class="nav1"><a href="/">추천 레시피</a></div>
	<div class="nav2"><a href="/post/hotpost">HOT 레시피</a></div>
	<div><a href="/post/chef">BEST 셰프</a></div>
	<div><a href="/user/usercenter">고객센터</a></div>
</nav>		
<main>
	<div class="container">
		<div class="category">
			<div><i class="bi bi-funnel fs-2"></i></div>
			<div><a>종류별 <i class="bi bi-chevron-down"></i></a></div>
			<div><a>상황별 <i class="bi bi-chevron-down"></i></a></div>
			<div><a>인원별 <i class="bi bi-chevron-down"></i></a></div>
			<div><a>방법별 <i class="bi bi-chevron-down"></i></a></div>
			<div><a>재료별 <i class="bi bi-chevron-down"></i></a></div>
			<div class="subcategory">
				<div><a>한식</a><a>양식</a><a>중식</a><a>동남아 음식</a><a>퓨전</a><a>차/음료/술</a></div>
				<div><a>반찬</a><a>밑반찬</a><a>김치/젓갈/장류</a><a>디저트/간식/과자</a><a>캠핑</a><a>술안주</a><a>초간단</a><a>파티</a><a>해장</a><a>도시락</a><a>다이어트/건강식</a><a>명절</a>
				<a>양념/소스/잼</a><a>아동</a><a>반려동물 간식</a><a>기타</a></div>
				<div><a>1인</a><a>2인</a><a>3~4인</a><a>5인 이상</a></div>
				<div><a>볶음</a><a>끓이기</a><a>부침</a><a>조림</a><a>비빔</a><a>튀김</a><a>무침</a><a>찜/삶기</a><a>굽기</a><a>데치기</a><a>회</a><a>기타</a></div>
				<div><a>소고기</a><a>돼지고기</a><a>닭고기</a><a>채소류</a><a>해물류</a><a>달걀/유제품</a><a>가공식품</a><a>밀가루</a><a>건어물/버섯</a><a>콩/견과류</a><a>쌀/곡류</a><a>기타</a></div>
			</div>
		</div>
		
		<h3 class="navtitle">HOT 레시피</h3>
		<div class="hot">
			<div class="arrow"><i class="bi bi-chevron-compact-left" style="font-size: 4rem;"></i></div>
			<c:forEach var="item" items="${list}" begin="0" end="2">
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
							<p><i class="bi bi-bookmark"></i>${item.maincategoryname}</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : ${item.recommend}</p>
						</div>
						<div>#${item.recipetag}</div>
						<div class="detail"><a href="/post/detail/${item.recipeid}"><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>
				</div>
			</c:forEach>
			<div class="arrow"><i class="bi bi-chevron-compact-right" style="font-size: 4rem;"></i></div>
		</div>
					
		<h3 class="navtitle">BEST 레시피</h3>
		<div class="best">
			<div class="arrow"><i class="bi bi-chevron-compact-left" style="font-size: 4rem;"></i></div>
			<c:forEach var="item" items="${list}" begin="0" end="2">
				<div class="bestdiv">
					<div class="bestphoto"></div>
					<div class="bestcontent">
						<div>
							<h3>레시피명</h3>
							<p>레시피 설명</p>
						</div>
						<div class="cook">
							<p><i class="bi bi-clock"></i>요리 시간</p>
							<p><i class="bi bi-bookmark"></i>요리 종류</p>
							<p id="recup"><i class="bi bi-hash"></i>추천수 : ${item.recommend}</p>
						</div>
						<div>재료 : </div>
						<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>	
				</div>
			</c:forEach>
			<div class="arrow"><i class="bi bi-chevron-compact-right" style="font-size: 4rem;"></i></div>
		</div>
			
		<h3 class="navtitle">인기 요리사</h3>
		<div class="chef">
			<div class="arrow"><i class="bi bi-chevron-compact-left" style="font-size: 4rem;"></i></div>
			<c:forEach var="item" items="${list}" begin="0" end="2">
				<div class="chefdiv">
					<div class="chefphoto"></div>
					<div class="chefcontent">
						<div>
							<h3>요리사명</h3>
							<p>주요 요리</p>
						</div>
						<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
					</div>	
				</div>
			</c:forEach>
			<div class="arrow"><i class="bi bi-chevron-compact-right" style="font-size: 4rem;"></i></div>
		</div>
	</div>
</main>

<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
<script>
document.querySelector(".nav1").addEventListener("click", function(e) {
	e.preventDefault();
	this.classList.add("clicked");
});
</script>
</body>
</html>
