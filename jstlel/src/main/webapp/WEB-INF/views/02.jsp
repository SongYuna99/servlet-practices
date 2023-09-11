<%@page import="servlets.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserVo vo0 = new UserVo();
vo0.setNo(0L);
vo0.setName("둘리0");

pageContext.setAttribute("vo", vo0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02.jsp</title>
</head>
<body>
	<h4>scope(객체의 존속 범위)</h4>
	== page scope == <br>
	${vo.no }<br>
	${vo.name }<br>
	
	== request scope == <br>
	${requestScope.vo.no }<br>
	${requestScope.vo.name }<br>
	
	== session scope == <br>
	${sessionScope.vo.no }<br>
	${sessionScope.vo.name }<br>
	
	== application scope == <br>
	${applicationScope.vo.no }<br>
	${applicationScope.vo.name }<br>

</body>
</html>