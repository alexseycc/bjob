<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" import="func.*"%>
<%
Empresa emp = new Empresa();
%>
<%="query:"+emp.campos("alx,alxsy")%>