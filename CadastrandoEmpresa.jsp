<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page language="java"%>
<%@page import="java.sql.*" import="func.*"%>
<!--%@ page language="java" import="conexao.*"%-->
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<%@include file="con.jsp" %>

<html lang="pt-br"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <head>
        <meta carset="utf-8">
</head>
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.mask.min.js"></script>
<body>
<div align="center">
    <%!
    Empresa emp = new Empresa();
%>

    <%       //try catch dont necessary but dont allow eoor
try{
pst=con.prepareStatement("insert into empresa("+emp.campos("nome,email,descricao,tel,endereco")+") values("+emp.getValue()+")"); 
for(int i=1;i<=emp.incremento();i+=2){    
pst.setString(i,request.getParameter(""+emp.camposDivididos()[--i]+""));
}
pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
}
    
out.println("<h1>Cadastro BingoJob!</h1>");
//impress達o do cadastro
for(int j=0;j<emp.incremento();j++){
out.println(emp.camposDivididos()[j]+":"+request.getParameter(emp.camposDivididos()[j])+"<br>");
}
    %>

    </div>

    
<button style="width:auto;height:auto;" onclick="window.location.href='index.jsp'">PaginaInicial</button>
<a href="Empresa.jsp"><button style="width:auto;height:auto;">CadastrarEmpresa</button></a>
    </body>	
</html>