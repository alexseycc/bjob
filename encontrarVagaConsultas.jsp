<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%@include file="con.jsp"%>
<%
//String consulta="select * from empresa where descricao=''";
try{
rs=st.executeQuery("select * from empresa where descricao='"+request.getParameter("tipo")+"'");
//pst.executeQuery("select * from empresa where descricao=?");
//pst.setString(1,request.getParameter("tipo"));    
//pst.execute();

//pst.close();
//con.close();
rs.next();
    rs.getString("nome");
}
catch(Exception e){
    }
%>