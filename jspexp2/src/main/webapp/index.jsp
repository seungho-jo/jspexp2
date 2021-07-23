<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>드디어 backend단 시작!</h2>
	<h2><%="hello world" %></h2>
	<%--
	<%= %> : expression 형태로 jsp의 코드 출력 : java원 코드 + html
	jsp주석 : frontend단 출력인 안됨!!
	 --%>
	 <h3>${'hello jsp'}</h3>
	 <%--
	 el 태그로 jsp에서 내부적으로 java 소스코드로 변환해주어 효과적으로 script코드를 처리
	  --%>
	 <!-- html주석 : frontend단에 출력됨 -->
</body>
</html>