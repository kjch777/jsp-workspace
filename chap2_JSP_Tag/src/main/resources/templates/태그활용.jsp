<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP 태그 설명 및 활용</title>
</head>
<body>
	<h1><% %> 태그 활용하기</h1>
	<h3><% %> Java 코드 실행 태그</h3>
	<p><% %> 안에 Java 코드를 넣으면, 해당 코드가 서버에서 실행된다.
	   웹 브라우저에서 직접 출력되는 것이 아니라, 서버에서 처리를 진행하고 결과를 다시 HTML 태그로 전달하여 보여준다.
	   대부분의 Java 코드가 허용되며, 변수를 선언하고 조건문이나 반복문을 작성할 수도 있다.</p>
	<%
		String name = "홍길동";
		out.println(name);
	%>
	
	<h3><%= %> ◀ Java 표현식의 결과를 HTML 로 출력할 때 사용한다.</h3>
	<p>위 태그에서 선언한 변수를 다른 태그 안에서 불러오고 싶을 때 주로 사용한다.
	   (위에서 이미 사용한 name 변수를 여기서도 사용하고 싶을 때)</p>
	<p>이름: <%=name %></p> <!-- 위에서 사용한 name 을 여기서도 사용하겠다는 의미의 코드이다. -->
	
	<h3><%! %> ◀ Method(= 기능) 에 대한 설정을 작성할 때 사용한다.</h3>
	<%!
		// 주석은 Java 와 같다.
		// 메서드 선언
		public String getGreeting() {
			return "Welcome To JSP";
		}
	%>
	
	<h2><%! %> 와 <%= %> 와 <% %> 활용하기</h2>
	<%
		// 위에서 작성해둔 getGreeting 메서드를 호출하여 결과 출력하기
		String greeting = getGreeting();
	%>
	<p>인삿말: <%=greeting %></p>
</body>
</html>