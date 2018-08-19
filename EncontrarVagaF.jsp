<%@ page import="java.sql.*"%>
<%@include file="con.jsp"%>
<script src="./js/jquery.min.js"></script>
<html lang="pt-br">
    <head>
        <title></title>
    <meta charset="utf-8">
    </head>
    <body>
<%!
      public String print(String nm){
return nm;
}
        
        
public void inserirr(Connection con){
    try{
Statement st=con.createStatement();    
  st.execute("insert into empresa(nome) values('514')");    
    }
    catch(SQLException sqlex){
        
    }
    }        
        
      %>
        <%
        out.println("welcomne "+print("alex"));
     inserirr(con);
 st.execute("insert into empresa(nome) values('shiva')");   

        %> 
        <input type="text"><input type="button" onclick="xml()" value="inserir"/>
    
    
    
    
    <p id="txt">
        </p>
    
    
    
    
    
    </body>
</html>

<script>
    /*
function xml(){
    var nome="alx";
    var xhttp = new XMLHttpRequest();
  
    xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
//  alert("suporte ao "+xhttp);
    
    }
};
xhttp.open("GET", "test2.jsp", true);
xhttp.send();
}
*/
    var nm="alx";
    $(document).ready(function(){
        //$("input:button").click(function(){
          $("input[type='button']").click(function(){
            //alert("hello");
            $.get("test2.jsp",{nm:nm},function(info){
                $("#txt").html(info);
                
            });
        });
        
    });
</script>