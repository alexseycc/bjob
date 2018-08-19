<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="func.*" %> 
<%@ page import="java.sql.*"%>
<%@include file="con.jsp"%>
<script src="./js/jquery.min.js"></script>
<!--%@ page language="java" import="conexao.*%>-->
 
    
<%

rs=st.executeQuery("select * from bj");
    rs.next();
    %>
 
<html lang="pt-br">
<title><%=rs.getString("nome")%></title>
    <head>
  <meta charset="UTF-8">
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
            <select value="Escolha" id="tipo" onchange="mudar()">
   <%
rs=st.executeQuery("select tipo from empresa");
        while(rs.next()){
            out.println("<option>"+rs.getString("tipo")+"</option>");
        }
                %>
</select><pre><label id='tp'> 
</pre>             
            </div>
        </div>
    <p id="texto">
        
   </body>
</html>

<script>
    
    function mudar(){
        var nome=document.getElementById('tipo').value;
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
               }
        
        
    }
    
    /*
$(document).ready(function(){
    $("#tipo").change(function(){
        alert($(this).val());
        var nome=$(this).val();
    $.get("EncontrarVagas.jsp",{nome:nome},function(info){
        $("#texto").html(info);
    });
        
    });
    
});
*/
 
    
    function info(){
var request = new XMLHttpRequest();
request.open('GET', window.location.pathname, true);
request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    // Successo!
    var data = request.responseText;
  } else {
    // Deu erro

  }
};
request.send();
        }
</script>



