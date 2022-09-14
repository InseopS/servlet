<%@page import="java.io.Console"%>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	if(session.getAttribute("cart") != null && request.getParameterValues("basketItem") != null) {
		List<String> cart = (List<String>)session.getAttribute("cart");
		String[] delList = request.getParameterValues("basketItem");
		for(int i = delList.length; i > 0; i--)
			cart.remove(Integer.parseInt(delList[i-1]));
		
	session.setAttribute("cart", cart);
%>
	<c:redirect url='cartOut.jsp'/>
<%
	} else out.println("잘못된 접근입니다.");
%>