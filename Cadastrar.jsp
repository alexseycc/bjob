<%@ page contentType = "text/html;charset=utf-8" %>
<%@include file="con.jsp"%>
<%@ page import="java.sql.*"%>
<%
String alx="sa";
st.execute("insert into empresa(nome) values('"+alx+"')");
%>