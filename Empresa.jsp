<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="func.*" %> 
<%@include file="con.jsp"%>
<%@ page import="conexao.*" import="java.io.*,java.sql.*,javax.sql.*" %>


<%
rs=st.executeQuery("select * from bj");
rs.next();
%>
        

<html>
    <head>
  <meta charset="UTF-8">
</head>
    <title><%=rs.getString("nome")+"Empresa"%></title>
<link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.mask.min.js"></script>
<body>

<div class="container">
            <div class="content">
<div class="title">Empresa</div>
               <pre>
                <form action="CadastrandoEmpresa.jsp" method="get" id="formulario">
                    <label>Nome</label>            <input type="text" id="nome" name="nome"/>
                    <label>Email</label>           <input type="text" id="email" name="email" placeholder="@exemplo.com"/>
                    <label>DescriçãoDaVaga</label> <input type="text" id="descricao" name="descricao"/>
                    <label>Telefone</label>        <input type="text" id="telefone" name="telefone" placeholder="(00)0000-0000"/>
                    <label>Cnpj</label>            <input type="text" id="cnpj" name="cnpj" placeholder="000-000-000/0000-0"/>
                <label>Tipo</label>            <select name="foo" style="width: 120px" id="tipo">
   <%
Statement st2=con.createStatement();
ResultSet rs2;
rs2=st2.executeQuery("select tipo from area");
//rs=st.executeQuery("select tipo from empresa");
        while(rs2.next()){
            out.println("<option>"+rs2.getString("tipo")+"</option>");
        }%>
                </select>
                    <label>Requisito</label>
                    <textarea rows="4" cols="50" id="requisito" name="requisito">
                    </textarea> 
                    <input type="submit" value="Cadastrar" style="height:20px;width:200px" class="btn-primary btn-sm" id="cad_btn"/>
                </form></pre>
            </div>
        </div>

    </body>	
</html>




<script>
$(document).ready(function(){
   $("#telefone").mask("(00)0000-0000"); 
   $("#cnpj").mask("000-000-000/0000-0"); 
    
    
    
  
$("#cad_btn").click(function(){
                //        $("formulario")[0].reset();;
                        //alert($("#tipo").val());
var tipo=$("#tipo").val();
//$.get("CadastrandoEmpresa.jsp",{tipo:tipo});
});
});
</script>