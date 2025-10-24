<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/usercenter.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<nav>
	<div class="recrecipe"><a href="/">추천 레시피</a></div>
	<div><a href="/post/hotpost">HOT 레시피</a></div>
	<div><a href="/post/chef">BEST 셰프</a></div>
	<div><a href="/user/usercenter">고객센터</a></div>
</nav>
<div class="container" style="margin-top: 50px;">
	<ul class="nav nav-tabs">
		<li class="nav-item">
		  <button class="nav-link active" id="not-tab" data-bs-toggle="tab" data-bs-target="#not-tab-pane" aria-current="page" type="button">공지사항</button>
		</li>
		<li class="nav-item">
		  <button class="nav-link" id="q-tab" data-bs-toggle="tab" data-bs-target="#q-tab-pane" type="button">자주하는 질문</button>
		</li>
		<li class="nav-item">
		  <button class="nav-link" type="button"><a href="/user/question" style="text-decoration: none;">1:1 문의</a></button>
		</li>
	</ul>
	
	<div class="tab-content" id="myTabContent">
	  <div class="tab-pane fade show active" id="not-tab-pane" role="tabpanel" aria-labelledby="not-tab" tabindex="0">
	  	<div class="notification">
			<div class="title"><h1>공지사항</h1></div>
			<hr class="border border-dark border-2 opacity-100 hrl">
			
			<div>
				<table class="table table-sm">
					<thead class="table-secondary">
						<tr>
							<th class="fs-5" style="width: 7%;">No.</th>
							<th class="fs-5" style="width: 10%;">유형</th>
							<th class="fs-5" style="width: 15%;">제목</th>
							<th class="fs-5">내용</th>
							<th class="fs-5" style="width: 20%;">작성일시</th>
						</tr>
					</thead>
					
					<tbody class="table-group-divider">
						<c:if test="${nlist.size() < 1}">
							<tr><td colspan="5">공지사항이 없습니다</td></tr>
						</c:if>
						
						<c:forEach var="item" items="${nlist}">
							<tr>
								<td>${item.notificationid}</td>
								<td>${item.type.label}</td>
								<td>${item.notifytitle}</td>
								<td>${item.message}</td>
								<td>${item.createdate}</td>
							</tr>
						</c:forEach>
					</tbody>
					
					<tfoot>
						<tr>
							<td colspan="6">
								<div class="pagination pagination-sm justify-content-center">
									<div class="page-item"><a href="?page=1${pager.query}" class="page-link">처음</a></div>
									<div class="page-item"><a href="?page=${pager.prev}${pager.query}" class="page-link">이전</a></div>
									
									<c:forEach var="page" items="${pager.list}">
										<div class="page-item ${pager.page == page ? 'active' : ''}"><a href="?page=${page}${pager.query}" class="page-link">${page}</a></div>
									</c:forEach>
									
									<div class="page-item"><a href="?page=${pager.next}${pager.query}" class="page-link">다음</a></div>
									<div class="page-item"><a href="?page=${pager.last}${pager.query}" class="page-link">마지막</a></div>
								</div>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			
			<div class="mb-2 searchdiv">
				<form class="row">
					<div class="col-3"></div>
					<div class="col-2">
						<select name="search" class="form-select rounded-pill form-select-sm" style="height: 40px;">
							<option value="1">No.</option>
							<option value="2">제목</option>
							<option value="3">작성자</option>
						</select>
					</div>
					
					<div class="col searchbox"> 
						<input type="text" name="keyword" class="form-control rounded-pill form-control-sm" style="height: 40px;">
						<div class="text-end search"><i class="bi bi-search"></i></div>
					</div>
					
					<div class="col-1 d-grid">
						<button class="btn btn-dark btn-sm rounded-pill" style="height: 40px;">검색</button>
					</div>
					<div class="col-3"></div>
				</form>
			</div>
		</div>
	  </div>
	  <div class="tab-pane fade" id="q-tab-pane" role="tabpanel" aria-labelledby="q-tab" tabindex="1">
	  	<div class="faq">

		</div>
	  </div>
	</div>
</div>

<script src="${pageContext.request.contextPath}/resources/js/question.js"></script>
</body>
</html>