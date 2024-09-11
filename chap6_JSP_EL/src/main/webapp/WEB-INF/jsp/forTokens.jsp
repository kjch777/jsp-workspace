<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forTokens</title>
</head>
<body>
	<h1>문자열을 구분자로 나눠 반복하기</h1>
	<pre>
		배열 형식이 아니라 하나의 값으로, 특정 기준에 의해 작성된 값을 구분자를 이용해 출력하는 것이다.
		
		c:set var="str" value="사과, 오렌지, 바나나" /
		- c:setter 에서 설정한 변수명 str 에 사과, 오렌지, 바나나가 들어있다.
		- str = "사과, 오렌지, 바나나"
		
	    	c:forTokens var="f" items="${str}" delims=","
			$ { f }
		/c:forTokens
		- forTokens: 특정 값을 기준으로 구분하여 반복 출력하는 것
			- var: 구분자로 나뉘어진 값을 하나씩 변수명에 담아 출력하기 위해 설정하는 변수명
			- items: 여기에는 어떤 값을 구분자로 나눌 것인지 작성하면 된다. 변수명 또는 구분자가 들어간 값이 들어갈 수 있다.
			- delims: 나눌 특정 기호나 값을 작성하면 된다.
	</pre>
	<c:set var="str" value="사과, 오렌지, 바나나" />
	<c:forTokens var="f" items="${str}" delims=", ">
		<li>${f}</li>
	</c:forTokens>
	
	<hr />
	
	<c:forTokens var="v" items="갓!두릅!곤드레" delims="!">
		<li>${v}</li>
	</c:forTokens>
	
	<hr />
	
	<c:set var="foods" value="치킨, 피자, 햄버거" />
	<c:forTokens var="food" items="${foods}" delims=", ">
		<li>${food}</li>
	</c:forTokens>
	
	<hr />
	
	<c:forTokens var="toy" items="포켓몬!디지몬!로봇" delims="!">
		<li>${toy}</li>
	</c:forTokens>
</body>
</html>