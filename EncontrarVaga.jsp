<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="func.*" %> 
<%@ page import="java.sql.*"%>
<%@include file="con.jsp"%>
<script src="./js/jquery.min.js"></script>
<!--%@ page language="java" import="conexao.*%>-->
<script>
    desc=[];
    sigla=[];
</script>
    
<%
rs=st.executeQuery("select * from bj");
    rs.next();
    %>
<html lang="pt-br">
<title><%=rs.getString("nome")%></title>
    <head>
  <meta charset="UTF-8">

        <%//descricao
rs=st.executeQuery("select descricao from tipo");
    while(rs.next()){     
%>
<script>
    desc.push("<%=rs.getString("descricao")%>");
</script>
<%}%>

        <%//sigla
rs=st.executeQuery("select sigla from tipo");
    while(rs.next()){     
%>
<script>
sigla.push("<%=rs.getString("sigla")%>");
</script>
<%}%>
        
        <script>
    function mudar(){
        var nome=document.getElementById('tipo').value;
        /*
        switch(nome){
            case "TI":
                document.getElementById('tp').innerHTML="Tecnologia da Informação";
            break;
            case "EC":
                document.getElementById('tp').innerHTML="Engenharia Cívil";
            break;
                case "EM":
                document.getElementById('tp').innerHTML="Engenharia Mecanica";
            break;
            case "EE":
                document.getElementById('tp').innerHTML="Engenharia Elétrica";
            break;
            case "PB":
                document.getElementById('tp').innerHTML="Publicidade";
            break;
            case "ADM":
                document.getElementById('tp').innerHTML="Admnistração";
            break;
               }
               */
        for(var i=0;i<desc.length;i++)
            if(nome==sigla[i]){
               document.getElementById('tp').innerHTML=desc[i]; 
            }
        
  }
</script>
</head>
    <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="./css/stilo.css">
<%
BingoJob bng = new BingoJob();
%>
    <body>
        
        <div class="container">
            <div class="content">
<div class="title">EnontrarVaga</div>
            <select value="Escolha" id="tipo" name="tipo" onchange="mudar()">
   <%
                ResultSet sigla=null;
sigla=st.executeQuery("select sigla from tipo order by sigla");
       while(sigla.next()){
            out.println("<option>"+sigla.getString("sigla")+"</option>");
        }
                %><%
ResultSet desc=st.executeQuery("select descricao from tipo order by sigla limit 1");
desc.next();
String descS="<script>document.write(nome)</script>";
%>
                </select><pre id="tp"><%=desc.getString("descricao")%>
</pre>
            
            </div>
        </div>
    <p id="texto">
        
   </body>
</html>
<script>
$(document).ready(function(){
 $("#tipo").change(function(){
     tipo=$("#tipo").val();
     alert("aloha "+tipo);
     
 });   
});
</script>




