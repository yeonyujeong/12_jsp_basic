<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초2</title>
</head>
<body>
	
	<% 
		request.setCharacterEncoding("utf-8"); 
	
		String name = request.getParameter("name");
		String id	= request.getParameter("id");
	
		// hobbies제외하고 진행해주세요!
		
	%>


	<p>이름   : <%=name %></p>
	<p>아이디 : <%=id %></p>
	
	

</body>
</html>