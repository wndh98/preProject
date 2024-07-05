<%@page import="java.util.List"%>
<%@page import="com.model.dto.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.dao.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	EmpDao ed = new EmpDao();
	List<Emp> list = ed.findAll();
	for(Emp e : list){
		System.out.println(e);
	}
%>
</body>
</html>