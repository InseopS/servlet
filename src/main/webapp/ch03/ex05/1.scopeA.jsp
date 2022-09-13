<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지");
	// life cycle 현재 페이지가 실행되는 동안
	request.setAttribute("two", "리퀘스트");
	// life cycle request를 받은 뒤 client로 response를 보내기 전 까지
	session.setAttribute("three", "세션");
	// life cycle session 접속이 끊어질때까지
	application.setAttribute("four", "애플리케이션");
	// life cycle tomcat 서버 종료 혹은 앱을 종료 할 때까지
%>
<c:redirect url='1.scopeB.jsp'/>