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
<%--
ex) h5,select li(반복), input, table tr td에 해당 요소객체에
	반복문을 활용하여 출력처리하세요
--%>
	<h5>반복</h5>
	<select>
		<%for(int i=1;i<=10;i++){ %>
		<option><%=i %></option>
		<%} %>
	</select> 
	<ul>
		<%for(int i=11;i<=20;i++){ %>
		<li><%=i %></li>
		<%} %>
	</ul>
	<%for(int i=21;i<=30;i++){ %>
	<input type="text" value=<%=i %>> 
	<%} %> 
	<table>
		<%for(int i=31;i<=40;i++){ %>
		<tr><td><%=i %></td></tr>
		<%} %>
	</table>	
	<%
	String[][] data = {{"홍길동","1521","9984"},{"홍길동","1521","9984"},{"홍길동","1521","9984"}};
	%>
	<table>
		<tr><th>사원명</th><th>사원번호</th><th>부서번호</th></tr>
		<%for(int i=0;i<data.length;i++){ %>
		<tr>
			<%for(int z=0;z<data[i].length;z++){ %>
			<td><%=data[i][z] %></td>
			<%} %>
		</tr>
		<%} %>
	</table>
</body>
</html>