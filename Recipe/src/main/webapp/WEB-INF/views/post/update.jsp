<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>레시피 수정</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
	<form method="post">
		<div class="container">
			<div class="info">
				<h2>기본 정보</h2>
				<div>
					<h3>레시피 제목</h3>
					<input type="text" name="recipetitle" value="${item.recipetitle}" class="shortext">
				</div>
				<div>
					<h3>레시피 소개</h3>
					<input type="textarea" name="introduce" value="${item.introduce}" class="longtext">
				</div>
				<div>
					<h3>태그</h3>
					<input type="text" value="${item.recipetag}" class="shortext">
				</div>
				<div>
					<h3>공개여부</h3>
					<select id="isprivate" value="${item.isprivate}">
						<option value="false">공개</option>
						<option value="true">비공개</option>
					</select>
				</div>
			</div>
			<div class="img">
				<div width="200" height="150">
					<h2>대표 이미지</h2>
					<button type="button">변경</button>
				</div>
				<div width="200" height="150">
					<h2>완성 요리 이미지</h2>
					<button type="button">변경</button>
				</div>
			</div>
		</div>
		<div>
				<div class="type">
					<div>
						<p>종류</p>
						<select name="maincategoryid" value="${item.maincategoryid}">
							<option value="1">한식</option>
							<option value="2">양식</option>
							<option value="3">중식</option>
							<option value="4">동남아음식</option>
							<option value="5">퓨전</option>
							<option value="6">차/음료/술</option>
						</select>
					</div>
					<div>
						<p>상황</p>
						<select>
							<option>반찬</option>
							<option>디저트/간식/과자</option>
							<option>캠핑</option>
							<option>술안주</option>
							<option>초간단</option>
							<option>파티</option>
							<option>해장</option>
							<option>도시락</option>
							<option>다이어트/건강식</option>
							<option>명절</option>
							<option>양념/소스/잼</option>
							<option>아동</option>
							<option>반려동물 간식</option>
							<option>기타</option>
						</select>
					</div>
					<div>
						<p>방법</p>
						<select>
							<option>볶음</option>
							<option>끓이기</option>
							<option>부침</option>
							<option>조림</option>
							<option>비빔</option>
							<option>튀김</option>
							<option>무침</option>
							<option>찜/삶기</option>
							<option>굽기</option>
							<option>데치기</option>
							<option>회</option>
							<option>기타</option>
						</select>
					</div>
					<div>
						<p>인원</p>
						<select>
							<option>1인</option>
							<option>2인</option>
							<option>3~4인</option>
							<option>5인</option>
						</select>
					</div>
					<div>
						<p>재료별</p>
						<select>
							<option>소고기</option>
							<option>돼지고기</option>
							<option>닭고기</option>
							<option>채소류</option>
							<option>해물류</option>
							<option>달걀/유제품</option>
							<option>가공식품</option>
							<option>밀가루</option>
							<option>건어물/버섯</option>
							<option>콩/견과류</option>
							<option>쌀/곡류</option>
							<option>기타</option>
						</select>
					</div>
					<div>
						<p>난이도</p>
						<select>
							<option>상</option>
							<option>중</option>
							<option>하</option>
						</select>
					</div>
				</div>
		</div>
		<div>
			<h3>재료정보</h3>
				<ul id="infoul">
					<li id="infoli">
						<input type="text" name="ingredient" placeholder="재료명" />
						<input type="text" name="quantity" placeholder="수량" />
						<input type="text" name="unit" placeholder="단위" />
						<input type="text" name="note" placeholder="비고" />
						<button type="button" id="delete">-</button>
					</li>
				</ul>
				<button type="button" id="addmaterial">추가하기</button>
		</div>
		<div>
			<h3>요리순서</h3>
			<div id="cookbox">
				<div class="cookorder">
					<p>STEP 1</p>
					<input type="textarea" class="step"/>
					<button type="button" class="imgadd"></button>
					<div class="cookmethod">
						<div><p>재료</p><input type="text" name="ingredient" placeholder="예)밀가루 100g, 소금 2큰술" /></div>
						<div><p>도구</p><input type="text" name="ingredient" placeholder="예)국자, 냄비" /></div>
						<div><p>팁</p><input type="text" name="ingredient" placeholder="예)약불에 30분, 고기는 미리 데쳐서 준비" /></div>
					</div>
				</div>
			</div>
		<button type="button" id="addstep">STEP 추가하기</button>
		</div>
		<hr>
		<div class="editbox">
			<button type="submit" class="cookedit">레시피 재등록</button>
		</div>
	</form>
</body>
</html>