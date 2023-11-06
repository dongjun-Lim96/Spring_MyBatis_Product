<%@page import="member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<br>
접속자 아이디1 : <%=session.getAttribute("loginInfo") %><br>
<%
	MemberDto mb = (MemberDto)session.getAttribute("loginInfo");
%>
<%-- 접속자 아이디2 : <%=mb.getId()%><br> --%> 
<%-- 접속자 아이디2.5 : <%=((MemberBean)session.getAttribute("loginInfo")).getId()%><br> --%>
접속자 아이디3 : ${sessionScope.loginInfo.id}<br>
접속자 아이디4 : ${loginInfo.id}<br>

<br>

 <a href="<%=request.getContextPath()%>/start.jsp">시작페이지</a>

</body>
</html>