<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- UTF-8 을 대문자가 아닌 소문자 utf-8 로 하면 새로고침 시 랜덤하게 에러가 발생한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Controller 가 가리키는 JSP 파일 경로 제대로 작성하기</title>
</head>
<body>
	<h1>Controller 에서 .jsp 확장자 파일 연동하기</h1>
	<pre>
		컨트롤러에서 jsp 를 연결할 때, src/main/webapp/WEB-INF/jsp 폴더를 지정하여 연결해준다.
		jsp 폴더 안에 .jsp 관련 파일을 작성하여, 코드를 수행할 수 있도록 설정해주는 것이다.
		대부분의 개발자가 실수하는 부분은 바로 경로를 src/main/	resources	/webapp/WEB-INF/jsp 로 지정하는 것이다.
		src/main/webapp/WEB-INF/jsp ◀ O
		src/main/resources/webapp/WEB-INF/jsp ◀ X
	</pre>
</body>
</html>