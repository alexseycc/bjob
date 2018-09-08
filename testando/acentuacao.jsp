<%@ page contentType = "text/html;charset=utf-8" %>
<%
out.println("cora☼ção");
%>
<%request.setCharacterEncoding("UTF-8");%>
<select id="slc" name="slc">
    <option>informação</option>
    <option>elétrica</option>
</select>
<script>
slct=document.querySelector("#slc");
    /*
document.querySelector("#slc").onchange=function(){
    alert(document.querySelector("#slc").value);
}
*/
    slct.addEventListener("change",function(){
    //alert(document.querySelector("#slc").value);
      nome=slct.value;  
 window.location="acentuacao2.jsp?slc="+nome;       
       //location.href="acentuacao2.jsp?slc="+nome;
        //window.open("acentuacao2.jsp?slc="+nome);
    });
</script>