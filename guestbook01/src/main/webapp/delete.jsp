<%@page import="com.poscodx.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String no = request.getParameter("no");
String password = request.getParameter("password");
int num = Integer.parseInt(no);

if (new GuestBookDao().checkPassword(num, password)) {
	new GuestBookDao().delete(num);
	response.sendRedirect("/guestbook01");
} else {
	response.sendRedirect("/guestbook01/deleteform.jsp?no=" + no);
}
%>