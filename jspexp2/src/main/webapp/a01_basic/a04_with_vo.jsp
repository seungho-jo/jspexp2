<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "jspexp.a01_start.A01_Movie"
%>
<%
	request.setCharacterEncoding("utf-8"); // 요청값에대한 한글 encoding 처리
	String path = request.getContextPath(); // 기준 경로 설정
	
	A01_Movie m = new A01_Movie("블랙위도우",2289583);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
	<h3>최신영화</h3>
	<table>
		<tr><th>제목</th><th>관객수</th></tr>
		<tr><td><%=m.getTitle() %></td><td><%=m.getVisitCnt() %></td></tr>
	</table>
</body>
</html>