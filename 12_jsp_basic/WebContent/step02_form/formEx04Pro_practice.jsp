<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String modelName = request.getParameter("modelName");
		String email = request.getParameter("email");
		String quantity = request.getParameter("quantity");
		String requestInfo = request.getParameter("requestInfo");
		String agreeSafeCare = request.getParameter("agreeSafeCare");
		String agreePrivateInform = request.getParameter("agreePrivateInform");

		System.out.println("====웹으로부터 전송받은 데이터====");
		System.out.println("이름 : " + name);
		System.out.println("연락처 : " + contact);
		System.out.println("이메일 : " + email);
		System.out.println("주문모델 : " + modelName);
		System.out.println("구매수량 : " + quantity);
		System.out.println("요청사항 : " + requestInfo);
		System.out.println("안심케어 여부 : " + agreeSafeCare);
		System.out.println("개인정보보호 동의 : " + agreePrivateInform);
		
	%>
</body>
</html>