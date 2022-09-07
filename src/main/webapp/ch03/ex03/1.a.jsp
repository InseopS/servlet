<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
A
<%
 // dispatcher 분기하는 기능을 한다.
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response);
	//A forward B는 A와 B 모두 서버에 있어야한다.
%>