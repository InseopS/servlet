<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String errMsg = request.getParameter("errMsg");
	if(errMsg == null) errMsg = "";
%>
<form action='4.numOut.jsp' method='post'>
	<input type='number' name='num' placeholder='<%= errMsg %>'/>
	<input type='submit'/>
	<br>
	<h3 style='color:red'><%= errMsg != null ? errMsg : ""%></h3>
</form>