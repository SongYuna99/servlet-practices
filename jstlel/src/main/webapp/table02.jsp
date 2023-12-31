<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="row" value="${ param.r -1 }"></c:set>
	<c:set var="col" value="${ param.c -1 }"></c:set>
	<c:if test="${ empty row }">
		<c:set var="row" value="$3"></c:set>
	</c:if>
	<c:if test="${ empty col }">
		<c:set var="col" value="$3"></c:set>
	</c:if>
	<table border="1px" cellspacing="0px" cellpadding="10px">
		<c:forEach begin="0" end="${row }" step="1" var="i">
			<tr>
				<c:forEach begin="0" end="${ col }" step="1" var="j">
					<td>Cell(${ i }, ${ j })</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>