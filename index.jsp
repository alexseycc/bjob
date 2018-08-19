<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="func.*"%>
<%@ page import="conexao.*" import="java.io.*,javax.sql.*" %> 
<%@include file="con.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">
<link rel="stylesheet" </script>
<style>
@import url('./css/stilo.css');
</style>
<%
BingoJob bng=new BingoJob();

rs=st.executeQuery("select * from bj");
    rs.next();
    %>

<title><%=rs.getString("nome")%></title>
<html>
<body>

<div class="container">
    <div class="content">
<div class="title"><%=rs.getString("nome")%></div>
    <input type="button" value="Cadastre sua Empresa" onclick="window.open('Empresa.jsp','_blank')" class="btn btn-sm"/><input type="button" value="Encontre uma Empresa" onclick="window.open('EncontrarVaga.jsp','_blank')"/>
            </div>
        </div>

<%
Empresa emp = new Empresa();
emp.setNome("GoldxEngenharia");
emp.setArea("EngenhariaCívil");
emp.setEmail("GoldxEngenharia@gmail.com");
emp.setEndereco("Rua Thiago leal,EstelaMares");
emp.setTelefone("987454632");
%>

    
    <%
for(int i=0;i<=5;i++)    
 out.println("<br>");
    
out.println("Prometemos ser um acerto na hora de encontrar um emprego.");
                        out.println("<h3>Fuja da Crise!</h3>");
%><%
for(int i=0;i<=7;i++)    
 out.println("<br>");
 out.println("<h2>Missão de hoje,faça!</h2>");   
%>
    <br>
    <%
    out.println("<h1>    missão de sempre,Continue Tentando!</h1>");
rs.close();
    %>

    </body>	
</html>
