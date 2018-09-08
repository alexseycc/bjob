<%@ page contentType = "text/html;charset=utf-8" %>
<%
out.println("welcome "+request.getParameter("nome1"));	
out.println("<br>welcome "+request.getParameter("nome2"));	
out.println("<br>welcome "+request.getParameter("email"));	
out.println("<br>welcome "+request.getParameter("tel"));	
out.println("<br>welcome "+request.getParameter("descricao"));	
out.println("<br>welcome "+request.getParameter("slc"));	
%>