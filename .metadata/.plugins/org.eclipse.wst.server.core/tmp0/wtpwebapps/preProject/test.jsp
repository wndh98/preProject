<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@xptmxm.iptime.org:1521:XE";
String user="scott";
String password ="tiger";
Connection conn=DriverManager.getConnection(url, user, password);
System.out.println(conn);

%>
</body>
</html>