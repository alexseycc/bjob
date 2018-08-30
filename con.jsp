<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page language="java" import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");	 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bingojob", "root", "123654"); 
Statement st=con.createStatement();
ResultSet rs=null;
ResultSet rs2=null;
//PreparedStatement pst = null;
%>
