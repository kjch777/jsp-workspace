<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 값 넣기</title>
</head>
<body>
	<h1>format 태그 예제: 숫자</h1>
	<c:set var="price" value="150.75" />
	<fmt:formatNumber value="${price}" type="currency" />
	
	<pre>
		uri="http://java.sun.com/jsp/jstl/fmt"
		날짜와 숫자를 쉽게 포매팅할 수 있도록 도와주는 태그이다.
		날짜를 특정 형식으로 출력하거나, 숫자를 통화 또는 퍼센트 형식으로 변환할 수 있다.
		
		숫자 포매팅 태그
		fmt:formatNumber
		숫자를 특정 형식으로 변환할 때 사용한다.
		currency: 현재 위치한 지역에 맞춰 숫자에 통화 기호를 자동으로 추가한다.($ ₩ € 등)
		percent: 숫자를 퍼센트 형식으로 변환할 때 사용한다.
		number: 숫자를 소숫점 자리까지 조정하면서 표현할 수 있다.
		maxFractionDigits: 지정한 소숫점 자리까지만 보여주기
						   만약 2라고 지정했다면, 소숫점 뒤에 오는 숫자는 2자리를 넘길 수 없다.(최대 자릿수)
		
		maxFractionDigits: 최소 지정한 자릿 수 이상 소숫점에서 보여주기
						   만약 2라고 지정했다면, 소숫점 뒤에 오는 숫자는 2자리 이상 보여야 한다.(최소 자릿수)
		
		<c:set var="n" value="1234567.89" />
		<p>일반적인 숫자: <fmt:formatNumber value="${n}" type="number" /></p>
		<p>
			소숫점 둘쨋자리까지 표현하기: <fmt:formatNumber value="${n}" type="number" maxFractionDigits="2" />
			<fmt:formatNumber value="${n}" type="number" maxFractionDigits="2" />
		</p>
	</pre>
</body>
</html>