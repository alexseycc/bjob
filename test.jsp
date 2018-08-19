<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" import="conexao.*"%>
<%@include file="con.jsp"%>
<%
class test{
    
public String nome;
    
   
    public void setNome(String nome){
        this.nome=nome;
        
    }
    
    public String getNome(){
       return this.nome; 
        
    }
}
%>
