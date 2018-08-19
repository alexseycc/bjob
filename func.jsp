<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="func.*" %> 
<%@ page import="java.sql.*"%>
<%@include file="con.jsp"%>

<%
/*
extençes para reaproveitar
alexsey mostovik

*/
Statement st=con.createStatement();
ResultSet rs=null;
Statement st2=con.createStatement();
ResultSet rs2=null;
//PreparedStatement pstatement = null;
%>




<%!
public int x=1;
public int chamar(){
return x++;
}


%>



<%
//out.println("welcome "+nome);

rs2=st2.executeQuery("select * from bj");
    rs2.next();
String nome2=rs2.getString("nome");
out.println("welcome "+nome2);
%>
valor é:<%=chamar()%>


