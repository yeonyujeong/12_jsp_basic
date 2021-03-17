<%@page import="_04_bean.ProductTestDAO"%>
<%@page import="_04_bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈</title>
</head>
<body>

	<%
	
		request.setCharacterEncoding("utf-8");
	
		// 1) setter를 사용하는 방법
		
		String pdCd = request.getParameter("pdCd");
		String pdNm = request.getParameter("pdNm");
		String deptCd = request.getParameter("deptCd");
		String deptNm = request.getParameter("deptNm");
		String mgrNm = request.getParameter("mgrNm");
		
		//만약에 생성자가 있었다면
		//new ProductBean(pdCd,pdNm,deptCd,deptNm,mgrNm);
		
		ProductBean bean1 = new ProductBean();
		bean1.setPdCd(pdCd);
		bean1.setPdNm(pdNm);
		bean1.setDeptCd(deptCd);
		bean1.setDeptNm(deptNm);
		bean1.setMgrNm(mgrNm);
		
	%>
	
	<!-- 2) Bean을 사용하는 방법1 -->
	<jsp:useBean id="bean2" class="_04_bean.ProductBean">
		<jsp:setProperty name="bean2" property="pdCd" value="<%=pdCd %>"/>
		<jsp:setProperty name="bean2" property="pdNm" value="<%=pdNm %>"/>
		<jsp:setProperty name="bean2" property="deptCd" value="<%=deptCd %>"/>
		<jsp:setProperty name="bean2" property="deptNm" value="<%=deptNm %>"/>
		<jsp:setProperty name="bean2" property="mgrNm" value="<%=mgrNm %>"/>		
	</jsp:useBean>
	
	<!-- 3) Bean을 사용하는 방법2 -->
	<jsp:useBean id="bean3" class="_04_bean.ProductBean">
		<jsp:setProperty name="bean3" property="*"/>
	</jsp:useBean>
	
	<!-- 간단한 테스트1 -->
	
	bean1 : <%=bean1.getPdNm() %> , <%=bean1.getDeptNm() %> , <%=bean1.getMgrNm() %><hr>
	bean2 : <%=bean2.getPdNm() %> , <%=bean2.getDeptNm() %> , <%=bean2.getMgrNm() %><br>
			<jsp:getProperty property="pdNm" name="bean2"/> ,
			<jsp:getProperty property="deptNm" name="bean2"/> ,
			<jsp:getProperty property="mgrNm" name="bean2"/> , <hr>
			
	bean3 : <%=bean3.getPdNm() %> , <%=bean3.getDeptNm() %> , <%=bean3.getMgrNm() %><br>
			<jsp:getProperty property="pdNm" name="bean3"/> ,
			<jsp:getProperty property="deptNm" name="bean3"/> ,
			<jsp:getProperty property="mgrNm" name="bean3"/> , <hr>
			
	<!-- 간단한 테스트2 -->
	<%
		ProductTestDAO obj = new ProductTestDAO();
		obj.printData(bean1);
		obj.printData(bean2);
		obj.printData(bean3);
	
	%>

</body>
</html>