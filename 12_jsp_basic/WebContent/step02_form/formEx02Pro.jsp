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
		String pwd	= request.getParameter("pwd");
		String age	= request.getParameter("age");
		String hobbies	= request.getParameter("hobbies");
		
		// 체크박스는 복수의 값을 가져올 수 있으므로 배열형태로 저장한다.	
		String[] hobbies = request.getParameterValues("hobbies");
		
		
	%>


	<p>이름   : <%=name %></p>
	<p>아이디 : <%=id %></p>
	<p>취미 :
		<%
			for(int i = 0; i<hobbies.length; i++){
		%>
					<%=hobbies[i] %> &nbsp;
		<%
			}		
		%>		
	</p>
	

</body>
</html>