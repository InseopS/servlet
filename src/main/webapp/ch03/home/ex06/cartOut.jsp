<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<form action='cartDelProc.jsp'>

<a href='main.jsp'>메인</a>
<h3>장바구니</h3>
<%
	List<String> cart = (List<String>)session.getAttribute("cart");
	
	if(cart != null) {		
		if(cart.size() > 0) {
			int index = 0;
%>
			<ul>
<%
				for(String product: cart) {
%>
					<li><%= product %><input type='checkbox' name='basketItem' value='<%= index++ %>'></li>
<%
				}
%>
			</ul>
		<button type='submit'>장바구니 삭제</button>
<%
		} else out.println("장바구니에 물건이 없습니다.");
	} else out.println("장바구니가 없습니다.");
%>