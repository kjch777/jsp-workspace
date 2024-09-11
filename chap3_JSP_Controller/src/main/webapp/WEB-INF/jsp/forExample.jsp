<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for 문 예제</title>
</head>
<body>
	<% for(int i = 1; i <= 5; i++) { %>
	
	<strong>i = <%= i %></strong>
		
	<% } %>
	
	<a href="/">Home</a>
	<a href="/list">목록</a>
	<a href="/array">배열</a>
</body>
</html>