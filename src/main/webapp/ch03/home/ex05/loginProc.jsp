<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String msg = "";
	
	if(id.equals("java")) {
		if(pw.equals("java")) {
			msg = "java님 환영합니다.";
			request.setAttribute("logout","<a href='logout.jsp'>로그아웃</a>");
%>
			<jsp:forward page='main.jsp'/>
<%
		} else {
			request.setAttribute("errMsg", "잘못된 아이디 또는 패스워드 입니다.");
%>			
			<jsp:forward page='login.jsp'/>
<%
		}
	} else {
			request.setAttribute("errMsg", "잘못된 아이디 또는 패스워드 입니다.");
%>
			<jsp:forward page='login.jsp'/>
<%
	}
%>

