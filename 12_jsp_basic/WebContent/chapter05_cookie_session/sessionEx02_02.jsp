<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h2>세션을 이용한 로그인 폼처리 페이지</h2>
	<%
	
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		session.setAttribute("id", id);
		session.setAttribute("passwd", passwd);
		
	%>
	
	아이디 : <%=id %><br>
	패스워드 : <%=passwd %><br>

	<a href="sessionEx02_03.jsp">다음페이지로 이동</a>
	
</body>
</html>