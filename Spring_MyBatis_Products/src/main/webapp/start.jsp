<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%response.sendRedirect("list.prd"); %> --%>
	<%
		String viewProduct = "list.prd";
		String viewMember = "list.mb";
		String viewOrder = "order.mall"; //OrderMallController
	%>
	
	<a href="list.prd">상품 목록 보기</a>
	<br><br>
	<a href="list.mb">회원 목록 보기</a>
	<br><br>
	<a href="order.mall">나의 주문 내역</a>
</body>
</html>