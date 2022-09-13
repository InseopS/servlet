<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='java.net.URLEncoder' %>
<%
	String test = URLEncoder.encode("5.target.jsp?msg=한글", "UTF-8");
	String text = "dsfsdfsdf";
%>
<c:redirect url=test/>