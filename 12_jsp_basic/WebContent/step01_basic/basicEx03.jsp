<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문</title>
</head>
<body>

	<h1>조건문</h1>

	<%
		String name = "팀 버너스 리";
	
		if (name.equals("팀 버너스 리ㄴㄴㄴ")) {
	%>
			팀 버너스리 입니다.
	<% 
		}
		else { 
	%>
			팀 버너스리가 아닙니다.
	<% 
		}
	%>
	
	<hr>
	<h1>반복문</h1>
	
	<% 
		for (int i=0; i<10; i++) {
	%>
			출력 데이터<%=i %><br>
	<% 
		}
	%>	

</body>
</html>