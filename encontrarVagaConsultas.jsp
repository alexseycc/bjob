<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%@include file="con.jsp"%>
<%
PreparedStatement query=con.prepareStatement("select * from empresa where descricao=?");
query.setString(1,request.getParameter("tipo"));
ResultSet rst = query.executeQuery();
while (rst.next()){ 
out.println("nome: "+rst.getString("nome")+"<br>");
}
catch(Exception e){
    }
%>