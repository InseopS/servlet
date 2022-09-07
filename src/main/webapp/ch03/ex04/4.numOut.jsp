<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String numStr = request.getParameter("num");

	try {
		int num = Integer.parseInt(numStr);
%>
		<%= num * 2 %>
		<a href='4.numIn.jsp'>뒤로</a>
<%
	} catch(NumberFormatException e) {
%>
		<%-- 과제: numIn.jsp form에 에러메세지(영어)를 출력하라. --%>
		<c:redirect url='4.numIn.jsp?errMsg=%EA%B0%92%EC%9D%84%20%EC%9E%85%EB%A0%A5%ED%95%B4%EC%A3%BC%EC%84%B8%EC%9A%94.'/>
<%
	}
%>
	