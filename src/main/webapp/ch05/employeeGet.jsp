<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl' %>
<%
	EmployeeService employeeService = new EmployeeServiceImpl();
%>
<%= employeeService.getEmployee(100) %>

<!-- 100번 사원의 사번 이름 입사일 출력하라. -->