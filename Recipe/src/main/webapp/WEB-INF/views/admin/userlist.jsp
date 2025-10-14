<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
<table class="table">
  <thead>
    <tr><th>아이디</th><th>이름</th><th>이메일</th><th>닉네임</th><th>권한</th><th>관리</th></tr>
  </thead>
  <tbody>
    <c:forEach var="recipeuser" items="${list}">
      <tr>
      	<td>${recipeuser.userid}</td>
      	<td>${recipeuser.username}</td>
      	<td>${recipeuser.useremail}</td>
        <td>${recipeuser.nickname}</td>
        <td>${recipeuser.role}</td>
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