<%@ page language="java"%>
<%@ page contentType = "text/html;charset=utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="func.*"%>
<!--%@ page language="java" import="conexao.*"%-->
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<%@include file="con.jsp" %>

<html>
    <head>
        <meta charse="utf-8">
</head>
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.mask.min.js"></script>
<body>
<div align="center">
    <%!
   public String parametro="";


//setando os campos do db
public String campos(String campo){
    this.parametro=campo;
return this.parametro;
}
    //dividindo em array os campos
public String[] camposDivididos(){
String[] args=parametro.split("[,]");
return args;
       //return Arrays.toString(args);
}

    //descobrindo quantos campos tem
public int incremento(){
    String[] args=parametro.split("[,]");
    int quant=args.length;
    return quant;
}
    //colocando ps PREPARESTATEMENT embasado na quant dos campo
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
    <%       //try catch dont necessary but dont allow eoor
try{
pst=con.prepareStatement("insert into empresa("+campos("nome,email,descricao,tel,endereco")+") values("+getValue()+")"); 
for(int i=1;i<=incremento();i+=2){    
pst.setString(i,request.getParameter(""+camposDivididos()[--i]+""));
}
//pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
}
    
out.println("<h1>Cadastro BingoJob!</h1>");
    //impress達o do cadastro
for(int j=0;j<incremento();j++){
out.println(camposDivididos()[j]+":"+request.getParameter(camposDivididos()[j])+"<br>");
}
    //Empresa emp = new Empresa();
//out.println("opt:"+emp.getNome());
// out.println("desc:"+dc);
    %>

    </div>
</body>	
</html>