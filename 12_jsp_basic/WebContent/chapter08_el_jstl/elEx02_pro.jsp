<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 테스트</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		session.setAttribute("id", request.getParameter("id"));
		session.setAttribute("name", request.getParameter("name"));
	%>
	
	이름 : ${param.name }   <br>
	아이디 : ${param.id }   <br>
	비밀번호 : ${param.pwd } <br>
	나이 : ${param.age }	<br>
	성별 : ${param.gender }	<br>
	취미 : ${param.hobbies }<br>
	
	취미 : ${paramValues.hobbies[0]}<br>
	취미 : ${paramValues.hobbies[1]}<br>
	취미 : ${paramValues.hobbies[2]}<br>
	
	여행지 : ${param.travel }<br>
	메모 : ${param.content }<br>
	
	<a href="elEx02_session.jsp">다음페이지로 이동</a>

</body>
</html>