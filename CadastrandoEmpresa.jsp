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
   public String parametro="";



public String campos(String campo){
    this.parametro=campo;
return this.parametro;
}
public String[] camposDivididos(){
String[] args=parametro.split("[,]");
return args;
       //return Arrays.toString(args);
}

public int incremento(){
    String[] args=parametro.split("[,]");
    int quant=args.length;
    return quant;
}
    public String getValue(){
String symbol="?";
String comma=",";
String res="";
    for(int i=1;i<=incremento();i++){
        if(i==incremento())
        res+=symbol;  
        else{
        res+=(symbol+comma);  
        }
        }
return res;
}

     %>
    <%
/*
    try{
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
*/
try{
pst=con.prepareStatement("insert into empresa("+campos("nome,email,descricao,tel")+") values("+getValue()+")"); 
//for(int i=0;i<incremento();i++){
//pst.setString(i+1,request.getParameter("\""+camposDivididos()[i])+"\"");
int i=0;
int k=0;
out.println("<script>alert(\""+camposDivididos()[0]+"\")</script>");
pst.setString(++i,request.getParameter("\""+camposDivididos()[0]+"\""));
//pst.setString(++i,request.getParameter("nome"));
pst.setString(++i,request.getParameter("email"));
pst.setString(++i,request.getParameter("descricao"));
pst.setString(++i,request.getParameter("tel"));
pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
}
    
out.println("<h1>Cadastro BingoJob!</h1>");
    
for(int j=0;j<incremento();j++){
out.println(camposDivididos()[j]+":"+request.getParameter(camposDivididos()[j])+"<br>");
}
    
    
//out.println("Nome:"+request.getParameter("nome")+"<br>");
//out.println("Email:"+request.getParameter("email")+"<br>");
//out.println("Descricao:"+request.getParameter("descricao")+"<br>");
//out.println("Telefone:"+request.getParameter("telefone")+"<br>");
//out.println("Endereรงo:"+request.getParameter("endereco")+"<br>");

    %>
    </div>
</body>	
</html>