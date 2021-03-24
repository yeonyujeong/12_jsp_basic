<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 및 날짜 형식</title>
</head>
<body>

	<%--
	
		- 자주 쓰는 문법만 소개하며
		  상세한 옵션들은 필요한 상황이 생겼을때 
		  JSTL관련 문법을 구글에서 적용하여 사용해도 충분하다.
		
	 --%>


	<h3>날짜 형식</h3>
	<p><fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/></p>
	<p><fmt:formatDate value="${now}" pattern="yyyyMMdd"/></p>
	<p><fmt:formatDate value="${now}" pattern="yyyy년MM월dd일"/></p>
	
	<hr>
	
	<h3>숫자 형식</h3>
	<p><fmt:formatNumber value="${fData }"/></p>
	<p><fmt:formatNumber value="${fData }" type="currency" currencySymbol="$"/></p>
	<p><fmt:formatNumber value="${fData }" pattern=".0"/></p>
	<p><fmt:formatNumber value="${fData }" pattern=".00"/></p>
	<p><fmt:formatNumber value="${fData }" pattern=".000"/></p>
	
	<p><fmt:formatNumber value="100" pattern="000"/></p>
	<p><fmt:formatNumber value="10" pattern="000"/></p>
	<p><fmt:formatNumber value="1" pattern="000"/></p>
	
</body>
</html>