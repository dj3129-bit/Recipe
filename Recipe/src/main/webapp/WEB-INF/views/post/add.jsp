<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>레시피 등록</title>
</head>
<body>
	<form method="post">
		<div>
			<h2>기본 정보</h2>
			<div>
				<h3>레시피 제목</h3>
				<input type="text" name="recipetitle">
			</div>
			<div>
				<h3>레시피 소개</h3>
				<input type="textarea" name="introduce">
			</div>
			<div>
				<h3>태그</h3>
				<input type="text" name="recipetag">
			</div>
			<div>
				<h3>공개여부</h3>
				<select id="isprivate">
					<option>공개</option>
					<option>비공개</option>
				</select>
			</div>
		</div>
		<div>
			<div width="200" height="150">
				<h2>대표 이미지</h2>
				<button type="">추가</button>
			</div>
			<div width="200" height="150">
				<h2>완성 요리 이미지</h2>
				<button type="">추가</button>
			</div>
		</div>
		<div>
			<div>
				<p>종류</p>
				<select name="maincategoryid">
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
		<div>
			<h3>재료정보</h3>
			<ul>
				
			</ul>
			<button type="button"></button>
		</div>
		<div>
			<h3>요리순서</h3>
			<div>
				<p>STEP 1</p>
				<div>
					<p>조리 내용</p>
					<button type="button"></button>
				</div>
			</div>
			<button type="button">STEP 추가하기</button>
		</div>
		<div>
			<button type="submit">레시피 등록</button>
		</div>
	</form>
</body>
</html>