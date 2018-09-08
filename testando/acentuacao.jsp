<%@ page contentType = "text/html;charset=utf-8" %>
<%
out.println("cora☼ção");
%>
<%request.setCharacterEncoding("UTF-8");%>
<script>

    var pessoa={nome:"alx",
                idade:23,
                tipo:{a:"a",b:"b",},
                endereco:"rua almeida louca"};
    //patt = new regex("^6");
    //patt.test("6sd");
    alert(pessoa["nome"]);
    alert(pessoa["tipo"]["a"]);
    let str="";
    for(x in pessoa){
     //if(typeof x === 'object' )
     alert('objeto encontrado');
         alert(x+"->"+pessoa[x]);
    str+=x+"->"+pessoa[x];
    }
    alert(pessoa["tipo"]);
    
</script>
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