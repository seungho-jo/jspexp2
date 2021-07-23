<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"
    import = "jspexp.z02_VO.Member"
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
<%--
# 정리문제
1. 아래내용을 jsp로 출력하세요.
    1) 반복문 1~4선언하고, 테이블행(4X1)과 테이블열(1X4)로 출력하세요.
    2) 배열로 무지개색상 선언, h2로 7개의 무지개 배경색상으로 문자열과 함께 출력
    3) 아래와 같은 형식을 반복문을 활용하여 form하위 요소객체를 이용하여 테이블과 함께 출력하세요
        선택 물건명   가격  갯수
        []  [   ]  [  ] [select(1~10)]
        []  [   ]  [  ] [select(1~10)]
        []  [   ]  [  ] [select(1~10)]
    4) ArrayList<String>으로 메뉴리스트를 선언하고, ul하위에 li안에 a link로 메뉴로 출력하세요.
    5) 회원 VO를 Member(아이디,패스워드,이름,권한,포인트)로 만들고, 회원리스트 ArrayList<Member>로
        회원 5명 등록하고, 테이블 리스트로 출력처리하세요.
    6) 반복문과 조건문을 활용하여 번호가 있는 4X4테이블을 출력하세요.
2. 학번 이름 국어 영어 수학 형식으로 출력할 내용을 테이블로 설계를 하고, 데이터를 입력후,
    기존 dao(전날)에 출력 list하는 메서드를 만든 후, jsp 화면으로 출력처리하세요.
~ 정리문제 진행한 후, 9:30에 발표 진행하겠습니다. 각 조별 발표담당자를 메시지로 올려주세요.
각 조별로 발표시, 개선/적용 사항을 파악하여 정리해두었다가 취합해주세요.
--%>
<%-- 1. --%>
	<table>
		<%for(int i=0;i<=3;i++){ %>
		<tr><td><%=i %></td></tr>
		<%} %>
	</table>
	<table>
		<tr>
		<%for(int i=0;i<=3;i++){ %>
		<td><%=i %></td>
		<%} %>
		</tr>
	</table>
	<%
		String[] rainbow = {"red","orange","yellow","green","blue","indigo","purple"};
		for(int i=0;i<rainbow.length;i++){
	%>
	<h2 style="background-color:<%=rainbow[i] %>"><%=rainbow[i] %></h2>
	<%} %>
	<% 
		String[] product = {"사과","딸기","바나나"};
		int[] price = {1000,10000,3000};
	%>
	<form>
		<table>
			<tr><th>선택</th><th>물건명</th><th>가격</th><th>갯수</th></tr>
			<%for(int i=0;i<=2;i++){ %>
			<tr>
				<td><input type="checkbox"></td><td><%=product[i] %></td><td><%=price[i] %></td>
				<td><select><%for(int z=1;z<=10;z++){ %><option><%=z %></option><%} %></select></td>
			</tr>
			<%} %>
		</table>
	</form>
	<%
		ArrayList<String> list = new ArrayList<String>();
		list.add(0, "하나");
		list.add(1, "둘");
		list.add(2, "셋");
		list.add(3, "넷");
		list.add(4, "다섯");
	%>
	<ul>
		<%for(int i=0;i<list.size();i++){ %>
		<li><a><%=list.get(i) %></a></li>
		<%} %>
	</ul>
	<%
		ArrayList<Member> mlist = new ArrayList<Member>();
		mlist.add(new Member("himan",1111,"홍길동","일반회원",5000));	
		mlist.add(new Member("higirl",2222,"고길동","일반회원",10000));	
		mlist.add(new Member("hihiman",2411,"마길동","vip",50000));	
		mlist.add(new Member("higigirl",1111,"김길동","일반회원",1000));	
		mlist.add(new Member("goodman",7777,"오길동","관리자",0));	
	%>
	<table>
		<tr><th>아이디</th><th>패스워드</th><th>이름</th><th>권한</th><th>패스워드</th></tr>
		<%for(Member m: mlist){ %>
		<tr><td><%=m.getId() %></td><td><%=m.getPass() %></td><td><%=m.getName() %></td><td><%=m.getAuth() %></td><td><%=m.getPoint() %></td></tr>
		<%} %>
	</table>
	<table>
		<%for(int i=1;i<=4;i++){ %>
		<tr><%for(int z=1;z<=4;z++){ %><td><%=i*z %></td><% }%></tr>
		<%} %>
	</table>
	
</body>
</html>