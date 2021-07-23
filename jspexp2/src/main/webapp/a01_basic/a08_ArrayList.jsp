<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "java.util.*"
	import = "jspexp.a01_start.Product" 
%>
<%
	request.setCharacterEncoding("utf-8"); // 요청값에대한 한글 encoding 처리
	String path = request.getContextPath(); // 기준 경로 설정
	
	Product prod1 = new Product("사과",5000,2);
	Product prod2 = new Product("딸기",10000,8);
	Product prod3 = new Product("바나나",2000,5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
	<%--
	ex) 컴퓨터 부품을 list에 등록하고 테이블로 아래 형식으로 출력하세요
	ex)  ArrayList<Product>처리하고 아래와 같이 출력하세요
	--%>
	<% 
		ArrayList<String> list = new ArrayList<String>();
		list.add("cpu");
		list.add("ram");
		list.add("hdd");
	%>
	<table>
		<tr><th>번호</th><th>부품</th></tr>
		<tr>
		<%for(int i=0;i<list.size();i++){ %>
		<td><%=i+1 %></td>
		<td><%=list.get(i) %></td>
		</tr>
		<%} %>
	</table>
	<%
		ArrayList<Product> lists = new ArrayList<Product>();
		lists.add(prod1);
		lists.add(prod2);
		lists.add(prod3);
		int num = 1;
	%>
	<table>
		<tr><th>번호</th><th>물건명</th><th>가격</th><th>갯수</th></tr>
		<tr>
		<%for(Product plist:lists){ %>
		<td><%=num++ %></td>
		<td><%=plist.getName() %></td>
		<td><%=plist.getPrice()%></td>
		<td><%=plist.getCnt()%></td>
		</tr>
		<%} %>
	</table>
</body>
</html>