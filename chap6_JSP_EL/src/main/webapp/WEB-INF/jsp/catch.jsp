<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catch 를 이용한 예외 처리</title>
</head>
<body>
	<h1>Catch 를 이용한 예외 처리하기</h1>
	<pre>
		특정 문제나 오류가 발생했을 때, 그에 대한 예외 처리를 작성할 수 있다.
		
		c:catch
		- 특정 문제가 발생할 것을 사전에 대비하여 감싸주는 것(오류 방지)
		
		c:if 오류 방지
		- catch 안에 주로 사용한다.
		
		오류 관련 구문이 보이지 않는다면, 계산이나 태그 안에 문제가 발생할 경우 
		jsp 에서 문제 처리를 미리 진행한 다음에 코드를 보여주기 때문에 보이지 않는 것이다.
	</pre>
	
	<c:catch var="e">
		<c:set var="result" value="${10/0}" /> <!-- 10/0 으로 의도적으로 오류를 발생시키는 코드 -->
	</c:catch>
	
	<c:if test="${not empty e}">
		오류가 발생했습니다. ${e.message}
	</c:if>
</body>
</html>