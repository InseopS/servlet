<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
A
<%
 // dispatcher 분기하는 기능을 한다.
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response);
%>