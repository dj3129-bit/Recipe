<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Recipe</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<body>
<header>
	<div class="headerbox">
		<h1>레시피 로고</h1>
		<input type="text" class="headinput">	
		<button type="button" class="headbtn">검색</button>
		
		<c:if test="${sessionScope.recipeuser == null}">
			<div class="libox">
				<a href="login">
					<i class="bi bi-person fs-2"></i>
					<p>로그인</p>
				</a>
			</div>
			<div class="lobox">
				<div>
					<a href="agree">
						<i class="bi bi-person-plus fs-2"></i>
						<p>회원가입</p>
					</a>
				</div>
			</div>
		</c:if>
		
		<c:if test="${sessionScope.recipeuser != null}">
			<div class="welcome">
				<p>${sessionScope.recipeuser.nickname}님</p><p>환영합니다</p>
			</div>
			<div class="memberbox">
				<div class="memberchild"><a href="post/add"><i class="bi bi-pencil-square fs-2"></i><p>레시피 등록</p></a></div>
				<div class="memberchild"><a href="goMypage"><i class="bi bi-building fs-2"></i><p>마이 페이지</p></a></div>
				<div class="memberchild"><a href="logout"><i class="bi bi-box-arrow-right fs-2"></i><p>로그아웃</p></a></div>
			</div>
		</c:if>
	
	</div>
</header>
<nav>
	<div><a href="#">추천 레시피</a></div>
	<div><a href="#">HOT 레시피</a></div>
	<div><a href="#">BEST 셰프</a></div>
	<div><a href="#">고객센터</a></div>
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
		</div>
		
		<h3>HOT 레시피</h3>
		<div class="hot">
			<div class="hotdiv">
				<div class="hotphoto"></div>
				<div class="hotcontent">
					<div>
						<h3>레시피명</h3>
						<p>레시피 설명</p>
					</div>
					<div class="cook">
						<p><i class="bi bi-clock"></i>요리 시간</p>
						<p><i class="bi bi-bookmark"></i>요리 종류</p>
						<p><i class="bi bi-hash"></i>요리 방법</p>
					</div>
					<div>재료 : </div>
					<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
				</div>
			</div>
			<div class="hotdiv">
				<div class="hotphoto"></div>
				<div class="hotcontent">
					<div>
						<h3>레시피명</h3>
						<p>레시피 설명</p>
					</div>
					<div class="cook">
						<p><i class="bi bi-clock"></i>요리 시간</p>
						<p><i class="bi bi-bookmark"></i>요리 종류</p>
						<p><i class="bi bi-hash"></i>요리 방법</p>
					</div>
					<div>재료 : </div>
					<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
				</div>
			</div>
			<div class="hotdiv">
				<div class="hotphoto"></div>
				<div class="hotcontent">
					<div>
						<h3>레시피명</h3>
						<p>레시피 설명</p>
					</div>
					<div class="cook">
						<p><i class="bi bi-clock"></i>요리 시간</p>
						<p><i class="bi bi-bookmark"></i>요리 종류</p>
						<p><i class="bi bi-hash"></i>요리 방법</p>
					</div>
					<div>재료 : </div>
					<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
				</div>
			</div>
		</div>	
		
		<h3>BEST 레시피</h3>
		<div class="best">
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
						<p><i class="bi bi-hash"></i>요리 방법</p>
					</div>
					<div>재료 : </div>
					<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
				</div>	
			</div>
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
						<p><i class="bi bi-hash"></i>요리 방법</p>
					</div>
					<div>재료 : </div>
					<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
				</div>	
			</div>
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
						<p><i class="bi bi-hash"></i>요리 방법</p>
					</div>
					<div>재료 : </div>
					<div class="detail"><a><button type="button"><i class="bi bi-book"></i>상세보기</button></a></div>
				</div>	
			</div>
		</div>
		
		<h3>인기 요리사</h3>
		<div class="chef">
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
		</div>
	</div>
</main>

<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>
