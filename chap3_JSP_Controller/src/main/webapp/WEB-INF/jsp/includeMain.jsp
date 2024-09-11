<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시자 태그 JSP</title>
</head>
<body>
	<h1><%@ %> 지시자 태그</h1>
	<pre>
		<%@ %> 지시자 태그
		JSP 페이지에서 설정을 정의한다.
		다른 jsp 파일을 포함하여 재사용성을 높일 수 있다.
		대표적으로 page, include, tablib 지시자가 존재한다.
		page: JSP 페이지에 속성을 설정할 수 있다. html 형식인지, 글자 타입은 무엇인지 등을 설정할 수 있다.
		<%-- 
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		--%>
		include: 다른 jsp 파일을 포함하여 사용할 수 있다.
		<%--
		<%@ include file="파일명.jsp" %>
		 --%>
		taglib: bootstrap 이나 jquery, ajax 와 같은 외부 사이트에서 특정 기능을 가져와 사용할 수 있도록 설정할 수 있다.
		uri: 숫자(urn) 또는 주소(url) 로 된 값(을 가져오기)
		prefix: 가져온 값에 c 라는 별칭을 주어 사용하는 것
		<%--
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		 --%>
	</pre>
</body>
</html>