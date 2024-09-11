<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수를 삭제하는 remove</title>
</head>
<body>
	<h1>변수를 삭제하는 remove 태그</h1>
	<pre>
		JSTL 에서는 System.out.println 을 c:out 을 이용해서 작성한다.
		출력문 작성 방법
		c:out default="출력할 내용 작성"
		
		만약 특정 변수의 값을 출력하고 싶다면
		c:out var="변수명" default="변수명을 정상적으로 불러오지 못하거나, 특정 값이 없다면 보여줄 내용 작성"
		
		JSTL 에서 특정 변수값을 삭제하는 태그 c:remove
		제거문 작성 방법
		c:remove var="값을 삭제할 변수명"
	</pre>
	
	<c:set var="tempVar" value="삭제될 값 입니다." />
	
	<br />
	
	<c:out value="${tempVar}" />
	<c:remove var="tempVar" />
	
	<br />
	
	<c:out value="${tempVar}" default="값이 삭제되어 보이지 않습니다." />
</body>
</html>