<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
		List<String> cart = new ArrayList<>();
		if(session.getAttribute("cart") != null)
			cart = (List<String>)session.getAttribute("cart");

		if(products != null && products.length > 0) {
			for(String product: products)
				cart.add(product);
			
			session.setAttribute("cart", cart);
		}

%>
<c:redirect url='cartOut.jsp'/>