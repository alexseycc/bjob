<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%@include file="con.jsp"%>
<%
//String consulta="select * from empresa where descricao=''";
try{
    
//st.executeQuery("select * from empresa where descricao='"++"'");
pst.executeQuery("select * from empresa where descricao=?");
st.setString(1,request.getParameter("json"));    
}
catch(Exception e){
    
}
%>