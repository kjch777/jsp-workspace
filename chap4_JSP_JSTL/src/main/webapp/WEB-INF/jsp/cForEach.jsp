<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:forEach 를 활용하여 for 문 생성하기</title>
</head>
<body>
	<h1>c:forEach 를 활용하여 for 문 생성하기</h1>
	<!-- EL / JSTL -->
	<!-- EL 이 아니라 JSTL 을 사용하는 중이다. -->
	<!-- EL: < c : set var = "fruits" value = "${['Apple', 'Banana', 'Cherry']}" /> -->
	<!-- JSTL: 배열을 < % 에 담아서 사용해주어야 한다. -->
	<%
		String[] fruits = {"APPLE", "BANANA", "CHERRY"};
		pageContext.setAttribute("fruits", fruits);
	%>
	<!-- 
		pageContext: 페이지 안에서 변수명에 담긴 내용을 전체적으로 사용할 수 있도록 가지고 있는 것
		setAttribute: 저장하기("저장할명칭", 저장할변수명);
	-->
	<ul>
		<c:forEach var="fruit" items="${fruits}">
			<li>${fruit}</li>
		</c:forEach>
	</ul>
</body>
</html>