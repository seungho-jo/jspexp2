<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "jspexp.z01_database.A05_PrdparedDeptDao2" 
    import = "jspexp.z02_VO.Emp"
    import = "java.util.*" 
%>
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
		A05_PrdparedDeptDao2 dao = new A05_PrdparedDeptDao2();
		ArrayList<Emp> elist = dao.empList();
	%>
	<table>
		<tr><th>사원번호</th><th>사원명</th><th>급여</th></tr>
		<% for(Emp e: elist){%>
		<tr>
			<td><%=e.getEmpno() %></td>
			<td><%=e.getEname() %></td>
			<td><%=e.getSal()%></td>
		</tr>
		<%} %>
	</table>
</body>
</html>