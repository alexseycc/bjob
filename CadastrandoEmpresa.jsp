<%@ page language="java"%>
<%@ page contentType = "text/html;charset=utf-8" %>
<%@page import="java.sql.*"%>
<!--%@ page language="java" import="conexao.*"%-->
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<%@include file="con.jsp" %>

<html>
    <head>
        <meta charse="utf-8">
</head>
<link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.mask.min.js"></script>
<body>
<div align="center">
    <%!
    public String getValue(){
String symbol="?";
String comma=",";
String res="";
    for(int i =1;i<=4;i++){
        if(i==4)
        res+=symbol;  
        else{
        res+=(symbol+comma);  
        }
        }
return res;
}

     %>
    <%
//int quant=;    
    //Connection con= db.getCon();
    //単 obrigado o try,mas ajuda a evitar alguns erros!,dont allow equals names
try{
//st.execute("insert into empresa(nome) values('alx')");
pst=con.prepareStatement("insert into empresa(nome,email,descricao,tel) values("+getValue()+")"); 
pst.setString(1,request.getParameter("nome"));
pst.setString(2,request.getParameter("email"));
pst.setString(3,request.getParameter("descricao"));
pst.setString(4,request.getParameter("telefone"));
//pst.setString(5,request.getParameter("endereco"));
pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
}

out.println("<h1>Cadastro BingoJob!</h1>");
out.println("Nome:"+request.getParameter("nome")+"<br>");
out.println("Email:"+request.getParameter("email")+"<br>");
out.println("Descricao:"+request.getParameter("descricao")+"<br>");
out.println("Telefone:"+request.getParameter("telefone")+"<br>");
//out.println("Endereço:"+request.getParameter("endereco")+"<br>");

    %>
    </div>
</body>	
</html>