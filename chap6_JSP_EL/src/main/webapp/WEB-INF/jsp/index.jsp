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
			<%-- 형식 표현 방법 ▶ $ { } (사용 방법: $ { userName }) --%>
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
		</a:forEach>
	</ul>
	<p>EL / JSTL 각각 사용하는 차이</p>
	<pre>
		EL(Expression Language)
		- 목적: JSP 페이지에서 요청(request) 이나 세션(session) 과 같은 데이터를 쉽게 가져와서 출력할 때 주로 사용한다.
		- 문법: $ { } 를 사용하여 값을 출력한다.
		- 단점: 반복문이나 조건문같은 처리가 불가능하다.
		
		JSTL(Java server pages Standard Tag Library)
		- 목적: JSP 페이지에서 반복문, 조건문, 데이터 포맷팅, 데이터 베이스 접근과 같은 작업을 수행할 때 주로 사용한다.
		- 문법: prefix="미리설정해둔변수명" 미리설정해둔변수명:기능작성
		       prefix 안에 변수명을 설정할 때는 http://java.sun.com/jstl/core 위 주소에서 core 로 끝나기 때문에, 이 앞 글자를 따서 c 라고 주로 사용한다. 
		- 단점: 문법이 복잡하다.(태그를 익히는 데에 시간이 소요된다.)
	</pre>
	
	<h4>request</h4>
	<pre>
		request.setAttribute(): JSP 에서 요청(request) 범위에 데이터를 저장할 때 사용하는 메서드이다.
			                    HttpServletRequest 객체에 저장하여, JSP 페이지 안에서 해당 데이터를 다른 페이지로 전달하거나, 
			                    해당 페이지 안에서 사용할 수 있도록 설정할 때 사용한다.
		- 문법 예제: request.setAttribute(String name, 자료형 value)
		- name: 데이터를 저장할 때 사용할 Key 를 나타낸다. 이 Key 를 이용하여 나중에 데이터를 가져올 수 있다.
		- value: 저장할 실제 값(value) 문자열, 숫자, 배열, 객체 등 어떤 데이터 유형이라도 모두 저장할 수 있다.
	</pre>
	
	<h5>request 예제</h5>
	<%
		// 서버에서 데이터를 생성
		String name = "신짱구";
		int age = 5;
		
		// 데이터를 request 객체에 저장
		request.setAttribute("userName", name);
		// userName 변수명 안에 신짱구 라는 이름이 저장되고, 저장된 이름을 다른 곳에서도 사용할 수 있다.
		
		request.setAttribute("userAge", age);
		// userAge 변수명 안에 5 라는 숫자가 저장되고, 저장된 숫자를 다른 곳에서도 사용할 수 있다.
	%>
	
	<!-- JSP 페이지에서 데이터를 EL 로 출력하기 -->
	<p>이름: ${userName}</p>
	<p>나이: ${userAge}</p>
	
	<!-- request 에 저장된 값을 다른 페이지로 전달하여 출력하기 -->
	<%
		request.setAttribute("msg", "index.jsp 에서 hello.jsp 로 데이터 전달하기");
	
		// hello.jsp 페이지로 데이터 전달하기
		// Dispatcher: 전달자. 상태를 전달한다는 의미이다.
		// ▼ servlet 방식: springboot 를 이용하지 않을 때 사용하는 방식이다.
		// springboot 를 이용하여 controller 로 넘겨줄 때는 사용하지 않는 방법이다.
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/jsp/msg.jsp");
		requestDispatcher.forward(request, response);
	%>
</body>
</html>