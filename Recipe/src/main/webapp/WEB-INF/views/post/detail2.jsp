<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트 상세 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detail2.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<hr style="width: 100%; border:1px solid #000;">
	<div class="wrapper">
		<div class="container">
			<div class="img">
				<img src="${pageContext.request.contextPath}${item.imagepath}" style="width: 85%; height: 90%;">
			</div>
			<div class="info">
				<div>
					<h1 class="shortext">${item.kititle}</h1>
				</div>
				<div class="price">
					<p>할인율(%)</p>
					<p class="shortext">${item.price}원</p>
				</div>
				<div class="shiprice">
					<p>배송비 : ${item.shiprice}원</p>
					<button type="button" class="shippingguide">배송안내&nbsp;<i class="bi bi-arrow-right-circle-fill"></i></button>
				</div>
				<p>${item.kititle}</p>
				<div class="pricebox">
					<div class="counter">
						<button onclick="decrease()" class="counterbtn">-</button>
						<input type="number" id="kitquantity" value="1" min="1" />
						<button onclick="increase()" class="counterbtn">+</button>
					</div>
					<div class="buypricebox"><p class="buyprice" id="buyprice">${item.price}원</p></div>
				</div>
				<div class="totalbox">
					<p>구매 예정 금액</p>
					<p class="totalprice" id="totalprice">${item.price + item.shiprice}원</p>
				</div>
				<div>
					<button type="button" class="cart" id="addcart"><i class="bi bi-cart-check"></i>&nbsp;장바구니</button>
					<a href="/post/order/${item.kitid}"><button type="button" class="buy">바로 구매</button></a>
				</div>
			</div>
		</div>
		<div class="introduce">
			<ul>
				<li><a href="#">상세정보</a></li>
				<li><a href="#">기본정보</a></li>
				<li><a href="#">배송/교환/반품 안내</a></li>
				<li><a href="#">상품리뷰</a></li>
				<li><a href="#">상품문의</a></li>
			</ul>
			<div>${item.kitintroduce}</div>
		</div>
		<div class="review">
			<h3>상품리뷰</h3>
		</div>
	</div>
	
<script>
	const unitPrice = ${item.price};
	const shipPrice = ${item.shiprice};
	
    function increase() {
      const input = document.getElementById("kitquantity");
      const buyPrice = document.getElementById("buyprice");
      const totalPrice = document.getElementById("totalprice");
      
      let quantity = parseInt(input.value);
      input.value = quantity += 1;
      
      const total = unitPrice * quantity;
      buyPrice.innerText = total.toLocaleString() + "원";
      totalPrice.innerText = (total + shipPrice).toLocaleString() + "원";
    }

    function decrease() {
      const input = document.getElementById("kitquantity");
      const buyPrice = document.getElementById("buyprice");
      const totalPrice = document.getElementById("totalprice");
      
      let quantity = parseInt(input.value);
      input.value = quantity -= 1;
      
      const total = unitPrice * quantity;
      buyPrice.innerText = total.toLocaleString() + "원";
      totalPrice.innerText = (total + shipPrice).toLocaleString() + "원";
    }
    
    document.getElementById('addcart').addEventListener('click', function(){
    	const answer = confirm("장바구니에 저장되었습니다. 장바구니로 이동하시겠습니까?");
    	if(answer){
    		window.location.href = "/user/cartlist";
    	}
    })
</script>
<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
</body>
</html>