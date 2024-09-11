<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
	<h1>Search User</h1> <!-- JSTL 형식으로 작성할 예정 -->
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id}</td>
					<td>${user.userName}</td>
					<td>${user.userEmail}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h2>Add User</h2>
	<form action="/addUser" method="post">
		이름: <input type="text" name="userName" />
		이메일: <input type="email" name="userEmail" />
		버튼: <input type="submit" value="saveUser" />
	</form>
</body>
</html>