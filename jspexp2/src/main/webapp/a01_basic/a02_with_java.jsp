<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); // 요청값에대한 한글 encoding 처리
	String path = request.getContextPath(); // 기준 경로 설정
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
<%
// script로 자바코드 선언 영역
// java + html의 최종결과를 client에 넘기고 그 넘긴 html을 브라우저에서 랜더링하기 때문에
// java코드를 확인할 수 없다
// ex) a03_with_java.jsp 로 하고 테이블에 물건명,가격,갯수 정볼르 출력하세요
String name = "홍길동";
int age = 25;
String loc = "서울신림";
%>
	<h3>신상명세서</h3>
	<table>
		<tr><th>이름</th><th>나이</th><th>사는곳</th></tr>
		<tr><td><%=name %></td><td><%=age %></td><td><%=loc %></td></tr>
	</table>
</body>
</html>