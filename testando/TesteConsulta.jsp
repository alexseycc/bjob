<%@page contentType = "text/html;charset=utf-8" %>
<%@page import="java.sql.*" import="conexao.*"%>
<%
//createStatement
/*
int i=0;
Statement query=con.createStatement();
ResultSet rst=query.executeQuery("select * from empresa where descricao='Tecnologia da Informação'");
while (rst.next()){ 
out.println("nome: "+rst.getString("nome")+"<br>");
i++;
}
out.println("quantdade:"+i);
*/

//preparedStatement
/*
int i=0;
PreparedStatement query=con.prepareStatement("select * from empresa where descricao=?");
query.setString(1,"Tecnologia da Informação");
ResultSet rst = query.executeQuery();
while (rst.next()){ 
out.println("nome: "+rst.getString("nome")+"<br>");
i++;
}
out.println("quantdade:"+i);
*/
int i=0;
//TestDB ts = new TestDB();
Connection conn=TestDB.conectado();
Statement query=conn.createStatement();
ResultSet rst=query.executeQuery("select * from empresa where descricao='Tecnologia da Informação'");
while (rst.next()){ 
out.println("nome: "+rst.getString("nome")+"<br>");
i++;
}
out.println("quantdade:"+i);

%>
<%
ResultSet rst2=query.executeQuery("select * from empresa where descricao='Tecnologia da Informação'");
rst2.next();
//while(rst2.next()){
String nome=rst2.getString("nome");
String email=rst2.getString("email");
String descricao=rst2.getString("descricao");
String tel=rst2.getString("tel");
String endereco=rst2.getString("endereco");
//}
//out.println(rst2.getString("nome"));
  %>
<select id="slc" onchange="mudar()">
    <option>nada</option>
    <option>Tecnologia da Informação</option>
</select>
<script>
function mudar(){
    alert(document.querySelector("#slc").value);
    nome="<%=nome%>";
    email="<%=email%>";
    descricao="<%=descricao%>";
    tel="<%=tel%>";
    endereco="<%=endereco%>";
    alert("weocome "+nome);
    document.querySelector("#txt").innerHTML="nome:"+nome+"<br>email:"+email+"<br>tel:"+tel+"<br>endereco"+endereco;
}
</script>
<p id="txt">
    nome
</p>