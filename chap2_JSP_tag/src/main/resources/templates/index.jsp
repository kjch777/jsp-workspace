<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 사용 예제 1</title>
</head>
<body>
	<h1>JSP 문법으로 태그 사용하기</h1>
	<pre>
		jsp 문법을 사용하기 위해서는, index.jsp 페이지 안에서
		<% %> 작성 후, <% %> 안에 Java 처럼 작성해주면 된다.
	</pre>
	<%
		String name = "KH학생";
		out.println("name: " + name);
	%>
	<pre>
		jsp 를 사용하기 위해서는, 프로젝트 우클릭 -> Properties -> Java Build Path -> Libraries 
		-> Add Library -> Server Runtime -> Apache Tomcat 을 설정해 주어야 한다.
		
		Spring Boot + JSP -> Spring Boot + React (+ option/ NextJs or TypeScript)
	</pre>
	<h3>JSP <% %> 태그 사용하기</h3>
	<pre>
		이 페이지 안에서만 사용할 변수를 작성할 때는, <% %> 만 사용한다.
		JSP 에서 System.out.println 을 사용할 때는, System. 을 제외하고 쓰면 된다.
		System.out.println("name: " + name); ▶ out.println("name: " + name);
	</pre>
</body>
</html>