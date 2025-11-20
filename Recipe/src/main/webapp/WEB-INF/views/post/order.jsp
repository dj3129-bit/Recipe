<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<style>
form>div{
	border: 1px solid #ccc;
	border-radius: 15px;
	padding: 20px;
	margin-bottom: 20px;
}
.info{
	forn-size: 45px;
	background-color: darkred;
	color: #fff;
	text-align:center;
	margin: 30px 0;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<hr style="width: 100%; border:1px solid #000;">
<div class="container" style="width: 60%; margin: 0 auto;">
	<form>
		<div class="info">
			<h1>주문 정보</h1>
		</div>
		<div class="shippingAddress">
			<h2>배송지</h2>
			<div>
				<label for="username">받는 사람</label>
				<input type="text" name="username" />
			</div>
			<div>
				<label for="address">주소</label>
				<input type="text" name="zipcode" placeholder="우편번호" />
				<button type="button">주소 검색</button>
				<input type="text" name="address" placeholder="기본 주소" />
				<input type="text" name="address" placeholder="나머지 주소" />
			</div>
			<div>
				<label for="phone">휴대전화</label>
				<select id="phone1">
					<option value="010" selected>010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
				-<input type="number" id="phone2">-<input type="number" id="phone3">
			</div>
			<div>
				<select id="shipmessage">
					<option value="메세지 선택(선택 사항)" selected>메세지 선택(선택 사항)</option>
					<option value="배송 전에 미리 연락바랍니다.">배송 전에 미리 연락바랍니다.</option>
					<option value="부재시 경비실에 맡겨주세요.">부재시 경비실에 맡겨주세요.</option>
					<option value="부재시 문앞에 놓고 문자 남겨주세요.">부재시 문앞에 놓고 문자 남겨주세요.</option>
					<option value="빠른 배송 부탁드립니다.">빠른 배송 부탁드립니다.</option>
					<option value="택배함에 보관 부탁드립니다.">택배함에 보관 부탁드립니다.</option>
					<option value="직접 입력">직접 입력</option>
				</select>
			</div>
		</div>
		<div class="product">
			<h2>주문 상품</h2>
			<div style="display: flex;">
				<div class="img" style="margin-right: 50px;">
					<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 250px; height: 250px;">
				</div>
				<div>
					<p>${kititle}</p>
					<p>수량 : ${quantity}개</p>
					<p>${totalprice}원</p>
					<p>배송비</p>
					<p>${item.shiprice}원</p>
				</div>
			</div>
		</div>
		<div class="discount">
			<h2>쿠폰 할인/혜택</h2>
			<div>
				<p>적용 금액</p>
				<p>0원</p>
			</div>
		</div>
		<div class="payment">
			<h2>결제 정보</h2>
			<div>
				<p>주문 상품 : ${item.kititle}</p>
				<p>배송비 : ${item.shiprice}원</p>
				<p>할인 금액 : 0원</p>
			</div>
			<div>
				<p>상품 금액 : ${totalprice}원</p>
				<p>-0원</p>
			</div>
			<div>
				<p>최종 결제 금액</p>
				<p>${totalprice}원</p>
			</div>
		</div>
		<div class="method">
			<h2>결제수단</h2>
			<h3>결제수단 선택</h3>
			<button type="button">무통장 입금</button>
			<button type="button">신용카드</button>
			<button type="button">가상계좌</button>
			<button type="button">계좌이체</button>
		</div>
		<div class="agree">
			<p>주문 내용을 확인하였으며 약관에 동의합니다.</p>
		</div>
		<button type="submit">${totalprice}원 결제하기</button>
	</form>
</div>
</body>
</html>