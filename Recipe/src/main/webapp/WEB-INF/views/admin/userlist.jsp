<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<style>
.table {
  border-collapse: collapse;
}
.table th,
.table td {
  border: 1px solid black;
  padding: 8px;
}
</style>
</head>
<body>
<table class="table">
  <thead>
    <tr><th>아이디</th><th>이름</th><th>이메일</th><th>닉네임</th><th>권한</th><th>관리</th></tr>
  </thead>
  <tbody>
    <c:forEach var="recipeuser" items="${users}">
      <tr>
      	<td>${recipeuser.userid}</td>
      	<td>${recipeuser.username}</td>
      	<td>${recipeuser.useremail}</td>
        <td>${recipeuser.nickname}</td>
        <td>권한 미정</td>
        <!-- <td>recipeuser.role</td> -->
        <td>
          <a href="/admin/users/${recipeuser.userid}">상세</a>
          <form method="post" style="display:inline;">
            <button type="submit">강제 탈퇴</button>
          </form>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>