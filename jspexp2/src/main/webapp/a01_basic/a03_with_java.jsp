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
// ex) a03_with_java.jsp 로 하고 테이블에 물건명,가격,갯수 정볼르 출력하세요
String prod = "사과";
int price = 8000;
int cnt = 5;
%>
	<h3>신상명세서</h3>
	<table>
		<tr><th>물건명</th><th>가격</th><th>갯수</th></tr>
		<tr><td><%=prod %></td><td><%=price %></td><td><%=cnt %></td></tr>
	</table>
</body>
</html>