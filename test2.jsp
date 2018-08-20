<%@page contentType = "text/html;charset=utf-8" %>
<%@include file="con.jsp"%>
<%@page import="java.sql.*"%>
<script>
var nome="TI";

var fruits = [];
var desc = [];
var op;

</script>




<%
String opt="<script>document.write(nome)</script>";
rs=st.executeQuery("select descricao from tipo where sigla='ti'");
rs.next();
String nome="<script>document.writeln(nome)</script>";

out.println(opt==opt?"ok":"errou");
out.println("<br>"+rs.getString("descricao"));
String opp=rs.getString("descricao");
%>
<%="<br>welcome "+opt
%>

<script>
op="<%=opp %>";
    
fruits.push(op);
document.write("<br>valor de fruit: "+fruits[0]);
//document.writeln(op);
</script>


<%
rs=st.executeQuery("select descricao from tipo");
while(rs.next()){     
%>

<script>
desc.push("<%=rs.getString("descricao")%>");
</script>
<%
}
%>
<script>
    /*
document.write("<br>desc:"+desc[0]);
document.write("<br>desc:"+desc[1]);
document.write("tamanho:"desc.length);
*/
for(var i=0;i<desc.length;i++)
document.write("<br>desc:"+desc[i]);
document.write("<br>tamanho:"+desc.length);
    </script>