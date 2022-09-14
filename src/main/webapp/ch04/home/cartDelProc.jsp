<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList, java.util.StringTokenizer' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");	
	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		List<String> cart = new ArrayList<>();
		
		for(Cookie cookie: cookies) {
			if(cookie.getName().equals("cart")) {
				String tmp = cookie.getValue();
				st = new StringTokenizer(tmp, "/");
				while(st.hasMoreTokens())
					cart.add(st.nextToken());
			}
		}
		
		if(products != null && products.length > 0) {
			for(String product: products)
				cart.remove(product);
			
			String str = "";
			
			for(String product: cart) str += product + "/";
			
			Cookie cookie = new Cookie("cart", str);
			cookie.setMaxAge(60 * 60 * 24 * 7);
			response.addCookie(cookie);
		} else {
%>
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
<%
		}
	} else {
%>
		<c:set var='msg' value='장바구니가 없습니다.'/>	
<%
	}
%>
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/>
</c:redirect>