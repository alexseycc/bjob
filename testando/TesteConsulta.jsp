<%@page contentType = "text/html;charset=utf-8" %>
<%@page import="java.sql.*"%>
<%@include file="con.jsp"%>
<%
/*
int i=0;
Statement query=con.createStatement();
ResultSet rst=query.executeQuery("select * from empresa where descricao='Tecnologia da Informação'");
while (rst.next()){ 
out.println("nome: "+rst.getString("nome")+"<br>");
i++;
}
out.println("quantdade:"+i);
*/
int i=0;
PreparedStatement query=con.prepareStatement("select * from empresa where descricao=?");
query.setString(1,"Tecnologia da Informação");
ResultSet rst = query.executeQuery();
while (rst.next()){ 
out.println("nome: "+rst.getString("nome")+"<br>");
i++;
}
out.println("quantdade:"+i);
    %>