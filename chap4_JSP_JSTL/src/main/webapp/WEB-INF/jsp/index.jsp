<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- taglib: 태그 라이브러리
	 uri="http://java.sun.com/jsp/jstl/core" 를 가져와서 사용할 때,
	 prefix="c" 라는 별칭으로 사용하겠다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 웹 사이트</title>
</head>
<body>
	<h1>c 구문을 활용한 jstl 사용해보기</h1>
	<pre>
		JSTL: JSP Standard Tag Library 의 약자로,
			  jsp 에서 기본으로 사용하는 태그 라이브러리이다.
			  JSP 에서 반복문, 조건문, 변수 처리 등을 할 때 사용한다.
		사용 방법: 맨 위에 JSTL 주소를 가져와서 사용한다는 설정을 해주면 된다.
		< % @ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" % >
		<c:set var="name" value="신짱구" />
		<p>Name: ${name}</p>
		c: 를 사용하여 JSTL 에 저장된 기능을 가져올 수 있다.
		set 은 setter 의 줄임말로, 이름이라는 변수명에 value 로 설정한 신짱구를 넣겠다는 의미의 코드이다.
	</pre>
	
	<h3>c 태그를 이용하여 if 문 설정하기</h3>
	<pre>
		c 태그를 이용하여 if 문 설정하기
		c : if test = " $ { 테스트 할 조건 작성 } "
		c:if 구문은 else 가 존재하지 않는다.(오직 if 만 사용한다.)
	</pre>
	<c:set var="age" value="20" />
	<c:if test="${age >= 18}">
		<p>성인입니다.</p>
	</c:if>
	<c:if test="${age < 18}">
		<p>미성년자입니다.</p>
	</c:if>
</body>
</html>