<%@ page contentType = "text/html;charset=utf-8" %>
<%@include file="con.jsp"%>
<%@ page import="java.sql.*" import="func.*" import="java.util.*"%>
<%!
//String alx="sa";
//st.execute("insert into empresa(nome) values('"+alx+"')");

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

public String campos(String campo){
    return campo;
}
public String camposDivididos(String campo){
String[] args=campo.split("[,]");
 return args[0];
    //   return Arrays.toString(args);
}

public int incremento(String campo){
    String[] args=campo.split("[,]");
    int quant=args.length;
    return quant;
}

public void cad(PreparedStatement pst,Connection con,String campo){
    try{
//st.execute("insert into empresa(nome) values('alx')");
pst=con.prepareStatement("insert into empresa("+campos(campo)+") values("+getValue()+")"); 
for(int i=1;i<=incremento(campo);i++)
pst.setString(i,request.getParameter(camposDivididos(campos(campo))));
pst.execute();
pst.close();
con.close();
    }
catch(Exception e){
}
    
}
   
%>
<%
Empresa emp=new Empresa();
emp.setNome("ha");

out.println("welcome:"+getValue()+"<br>");
out.println("<br>campos:"+campos("nome,email,descricao,tel"));
out.println("<br>quantidade:"+incremento("nome,descricao,telefone"));
out.println("<br>campos divididos:"+camposDivididos(campos("nome,descricao,telefone")));

%>