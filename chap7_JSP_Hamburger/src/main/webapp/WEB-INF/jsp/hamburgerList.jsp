<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>햄버거 리스트</title>
</head>
<body>
	<h1>햄버거 불러오기</h1>
	<table border="1">
		<thead>
			<tr>
				<th>햄버거 번호</th>
				<th>햄버거 종류</th>
				<th>햄버거 가격</th>
				<th>햄버거 설명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="hamburger" items="${hamburgers}">
				<tr>
					<td>${hamburger.id}</td>
					<td>${hamburger.hamburgerName}</td>
					<td>${hamburger.hamburgerPrice}</td>
					<td>${hamburger.hamburgerDescription}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h1>햄버거 추가하기</h1>
	<form action="/addHamburger" method="post">
		햄버거 종류: <input type="text" name="hamburgerName" required="required" />
		<br />
		햄버거 가격: <input type="number" name="hamburgerPrice" required="required" />
		<br />
		햄버거 설명: <input type="text" name="hamburgerDescription" required="required" />
		<br />
		<input type="submit" value="추가하기" />
	</form>
</body>
</html>