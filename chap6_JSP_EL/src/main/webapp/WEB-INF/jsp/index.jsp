<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP EL 형식 사용하기</title>
</head>
<body>
	<h1>JSP EL 형식 사용 예제</h1>
	<pre>
		JSP EL 형식을 사용하여 Java 코드를 최소화하고, 데이터를 쉽게 출력하거나 조작할 수 있다.
		EL: Expression Language
		
		<%-- <% %> --%> 를 이용하여 Java 에서 전달할 값을 설정하고, 설정받은 값을 전달할 수 있다.
	</pre>
	<%
		// jsp 에서 임의로 사용할 데이터 설정하기
		request.setAttribute("userName", "신짱구");
		request.setAttribute("userAge", "5");
		request.setAttribute("balance", "100.25");
		request.setAttribute("fruits", new String[] {"사과", "오렌지", "바나나"});
	%>
	
	<!-- 1. 변수 출력 -->
	<p>사용자 이름: ${userName}</p>
	<p>사용자 나이: ${userAge}</p>
	<p>사용자 잔고: ${balance}</p>
	
	<!-- 2. 배열 출력 -->
	<h3>과일 목록</h3>
	<ul>
		<a:forEach var="fruit" items="${fruits}">
			<li>${fruit}</li> <!-- EL 태그 -->
			<%-- <li><%=fruit %></li> JSTL 태그 --%>
			<%-- EL / JSTL 각각 사용하는 차이 --%>
		</a:forEach>
	</ul>
</body>
</html>