<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "jspexp.a01_start.A02_Entertainer"
 %>
<%
	request.setCharacterEncoding("utf-8"); // 요청값에대한 한글 encoding 처리
	String path = request.getContextPath(); // 기준 경로 설정
	
	A02_Entertainer en = new A02_Entertainer("유재석","670520","개그맨");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
	<h3>연예인</h3>
	<table>
		<tr><th>이름</th><th>생년월일</th><th>분야</th></tr>
		<tr><td><%=en.getName() %></td><td><%=en.getBirth() %></td><td><%=en.getField() %></td></tr>
	</table>
</body>
</html>