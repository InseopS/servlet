<%@page import="java.io.Console"%>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	if(session.getAttribute("cart") != null) {
		List<String> cart = (List<String>)session.getAttribute("cart");
		String[] delList = request.getParameterValues("basketItem");
		out.println(delList.length);
		for(int i = 0; i < delList.length; i++)
		{
			cart.remove(Integer.parseInt(delList[i]));	
		}
		
		session.setAttribute("cart", cart);
%>
				<c:redirect url='cartOut.jsp'/>
<%
	}
%>