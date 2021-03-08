<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송기초 1</title>
</head>
<body>
	
	<%--
	
		- 폼 전송을 통해서 넘어 오는 데이터는 request객체를 통해서 전달을 받는다.
		- 페이지의 encoding설정 외에 request객체의 encoding을 추가로 지정해 주어야한다.
		- request.getParameter(); 메소드를 통해서 from을 통해 넘어온 데이터의 name속성 값을 가져온다.
		- request.getParameter(); 의 기본 반환타입은 문자열이다.
	 
	 --%>
	 
	
	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String language = request.getParameter("language");
		String reason   = request.getParameter("reason");
		int age			= Integer.parseInt(request.getParameter("age"));
		
		System.out.println("===============================");
		System.out.println("여기서부터 '백 앤드'의 영역입니다.");
		System.out.println("개발자는 볼수 있지만 사용자는 볼수 없습니다.");
		System.out.println("좋아하는 언어 : " + language);
		System.out.println("좋아하는 이유 : " + reason);
		System.out.println("나이 : " + age);
		
	%>
	
	<p>언어 <%=language %> </p>
	<p>이유 <%=reason %></p>
	<p>나이 <%=age %></p>
</body>
</html>