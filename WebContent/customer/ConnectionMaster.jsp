<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>

<%! Connection cn=null; %>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/fworks","root","root");
}
catch (Exception e) {
	e.printStackTrace();
	System.out.print("Connected Not Susccessfully"+e);
}
%>
