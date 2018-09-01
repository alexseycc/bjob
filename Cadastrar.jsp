<%@ page contentType = "text/html;charset=utf-8" %>
<%@include file="con.jsp"%>
<%@ page import="java.sql.*" import="func.*" import="java.util.*"%>
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


//out.println("<br>campos:"+campos("nome,email"));
out.println("<br>campos:"+parametro);
out.println("<br>"+getValue());
out.println("<br>quantidade:"+incremento());
for(int i=0;i<incremento();i++){
out.println("<br>campos divididos:"+camposDivididos()[i]);
out.println("<br>insert: insert into empresa("+parametro+") values("+getValue()+")");
out.println("<br>ps.setString("+(i+1)+",request.getParameter(\""+camposDivididos()[i]+"\")");
}
String nm="\"alan\"";
out.println(nm);










%>