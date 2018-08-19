<%@ page language="java" contentType = "text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<!--%@ page language="java" import="conexao.*"%-->
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<%@include file="con.jsp" %>


<%
out.println("<h1>Cadastro!</h1>");
out.println("Nome:"+request.getParameter("nome")+"<br>");
out.println("Email:"+request.getParameter("email")+"<br>");
out.println("Descricao:"+request.getParameter("descricao")+"<br>");
out.println("Telefone:"+request.getParameter("telefone")+"<br>");
out.println("Cnpj:"+request.getParameter("cnpj")+"<br>");
out.println("Tipo:"+request.getParameter("tipo")+"<br>");
out.println("Requisito:"+request.getParameter("requisito")+"<br>");

//Connection con= db.getCon();

PreparedStatement stmt=con.prepareStatement("insert into empresa(nome,cnpj,endereco,email,tel,tipo,requisito) values(?,?,?,?,?,?,?)"); 
stmt.setString(1,request.getParameter("nome"));
stmt.setString(2,request.getParameter("email"));
stmt.setString(3,request.getParameter("descricao"));
stmt.setString(4,request.getParameter("telefone"));
stmt.setString(5,request.getParameter("cnpj"));
stmt.setString(6,request.getParameter("tipo"));
stmt.setString(7,request.getParameter("requisito"));
stmt.execute();
stmt.close();
con.close();

%>
