<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 목록</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

</head>
<body>
	<div class="container">
		<div><h3>문의 목록</h3></div>
		
		<div>
			<table border="1" class="table table-sm">
				<thead class="table-dark">
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일시</th>
						<th>삭제 여부</th>
					</tr>
				</thead>
				
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr><td colspan="5">문의가 없습니다</td></tr>
					</c:if>
					
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.questionid}</td>
							<td>${item.questiontitle}</td>
							<td>${item.questioncontent}</td>
							<td>${item.questiondate}</td>
							<td><a href="delete/${item.questionid}" class="btn btn-danger btn-sm"><i class="bi bi-trash3"></i>삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
				
				<tfoot>
					<%-- <tr>
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
					</tr> --%>
				</tfoot>
			</table>
		</div>
		
		<div class="mb-2">
			<form class="row">
				<div class="col-5"></div>
				<div class="col-2">
					<select name="search" class="form-select form-select-sm">
						<option value="1">No.</option>
						<option value="2">제목</option>
						<option value="3">작성자</option>
					</select>
				</div>
				
				<div class="col"> 
					<input type="text" name="keyword" class="form-control form-control-sm">
				</div>
				
				<div class="col-1 d-grid">
					<button class="btn btn-primary btn-sm">검색</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>