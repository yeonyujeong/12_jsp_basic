<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>로그인 폼 처리 페이지</h2>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	
	%>
	
	아이디 : <%=id %><br>
	비밀번호 : <%=passwd %><br>
	
	<a href="sessionEx01_03.jsp">다음페이지로 이동</a>



</body>
</html>