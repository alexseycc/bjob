<%@ page contentType = "text/html;charset=utf-8" %>
<%@include file="con.jsp"%>
<%@ page import="java.sql.*" import="func.*" import="java.util.*"%>
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >

<%!
//st.execute("insert into empresa(nome) values('"+alx+"')");
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
public String camposDivididos2(){
String[] args=parametro.split("[,]");
//for(int i=0;i<i.length;i++)
//    return args[i];
       return Arrays.toString(args);
}

public int incremento(){
    String[] args=parametro.split("[,]");
    int quant=args.length;
    return quant;
}
public int incremento2(){
    String[] args=campos("alal,ala").split("[,]");
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
/*
public void cad(PreparedStatement pst,Connection con,String campo){
    try{
//st.execute("insert into empresa(nome) values('alx')");
pst=con.prepareStatement("insert into empresa("+campos(campo)+") values("+getValue()+")"); 
for(int i=1;i<=incremento(campo);i++)
//pst.setString(i,request.getParameter(camposDivididos(campos(campo))));
pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
}
    
}
*/
%>
<body>
    
<%
Empresa emp=new Empresa();
emp.setNome("ha");

/*
try{
pst=con.prepareStatement("insert into empresa("+campos("nome,email")+") values("+getValue()+")"); 
for(int i=0;i<incremento();i++){
pst.setString((i+1),request.getParameter(camposDivididos()[i]));
}
pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
} 
*/


/*
try{
pst=con.prepareStatement("insert into empresa("+campos("nome,email,descricao")+") values("+getValue()+")"); 
for(int i=0;i<incremento();i++){
pst.setString((i+1),camposDivididos()[i]);
}
pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
} 
*/
/*
out.println("<br>campos:"+campos("nome,email"));
out.println("<br>campos:"+parametro);
out.println("<br>"+getValue());
out.println("<br>quantidade:"+incremento());
for(int i=0;i<incremento();i++){
out.println("<br>campos divididos:"+camposDivididos()[i]);
out.println("<br>insert: insert into empresa("+parametro+") values("+getValue()+")");
out.println("<br>ps.setString("+(i+1)+",request.getParameter(\""+camposDivididos()[i]+"\")");
}
String cmp[]=camposDivididos2().replace("[","").split(",");
out.println("<br>capoDividido2:"+cmp[0]+"");
*/
%>
<form method="get" id="form" name="form">
<input type="text" placeholder="nome" id="nome1" name="nome1"/>
<input type="text" placeholder="nome" id="nome2" name="nome2"/>
<input type="text" id="email" name="email" placeholder="@exemplo.com"/>
<input type="text" id="descricao" name="descricao"/>
<input type="text" id="tel" name="tel" placeholder="(00)0000-0000"/>
<select id="slc" value="alx" name="slc">
        <option>alan</option>
    <option>brunna</option>
    </select>
    
    <input type="button" id="btn" value="verificar"/>
</form>
    <script>
    quantElement=document.getElementById("form").length;
          form=document.getElementById("form");
            arquivo="testelogin.jsp?";
        query="";
document.querySelector("#btn").addEventListener("click",function(){
    
var nome=document.querySelector("#slc").value;
 var myObj = {nm:"alxsy"};

for(i=0;i<quantElement-1;i++){
     if(form.elements[i].tagName=="SELECT"){
//query+=("slc="+form.elements[i].value);
query+=(form.elements[i].id+"="+form.elements[i].value);
         alert("tag:"+form.elements[i].tagName);
alert("id:"+form.elements[i].id);
alert("name:"+form.elements[i].getAttribute("name"));
alert("name:"+form.elements[i].name);
      }
        else{
query+=(form.elements[i].name+"="+form.elements[i].value+"&");
 }
        }
         window.location.href = arquivo+query;
 });
 

        
        //document.querySelector("#slc").onclick=function(){
/*
//document.querySelector("#slc").addEventListener("change",function(){
// document.querySelector("#btn").addEventListener("click",function(){
var nome=document.querySelector("#slc").value;
alert(nome);
document.querySelector("#form").action="testelogin.jsp?nmm="+nome;
document.querySelector("#form").submit();    
//var myObj = ;
//var myJSON = JSON.stringify(myObj["name"]);
window.location.href = "testelogin.jsp?nmm=" +nome; 
 
 }
      
}); 
*/
    </script>
    
    
</body>
