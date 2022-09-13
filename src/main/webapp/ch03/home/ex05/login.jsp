<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	Object errMsg = request.getAttribute("errMsg");
%>
<form action='loginProc.jsp'>
	아이디: <input type='text' name='id'/><br>
	암　호: <input type='password' name='pw'/><br>
	<input type='submit'/>
	<h3 style='color:red'><%= errMsg != null ? errMsg : ""%></h3>
</form>