<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page language="java"%>
<%@page import="java.sql.*" import="func.*"%>
<!--%@ page language="java" import="conexao.*"%-->
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<%@include file="con.jsp" %>

<html lang="pt-br"> 
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
//pst.execute();
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
</body>	
</html>