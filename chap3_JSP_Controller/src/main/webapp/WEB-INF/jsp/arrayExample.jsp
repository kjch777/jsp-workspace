<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열 값 받아오고 가져오기</title>
</head>
<body>
	<h1>[] 를 활용하여 배열 값을 작성하고, 작성된 값 출력하기</h1>
	<%
		String[] fruits = {"사과", "오렌지", "바나나", "멜론", "포도"};
	%>
	<pre>forEach 문을 활용하여 과일들 출력하기</pre>
	<% for(String f : fruits) { %>
		<ul>
			<li><%= f %></li>
		</ul>
	<% } %>
	
	<a href="/">Home</a>
	<a href="/list">목록</a>
	<a href="/for">for문</a>
</body>
</html>