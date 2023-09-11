<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03.jsp</title>
</head>
<body>
	<h4>JSTL Test : forEach</h4>
	<c:forEach items="${list }" var="vo">
		<h6>${vo.no } : ${vo.name }</h6> <br>
	</c:forEach>
</body>
</html>