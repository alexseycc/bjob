<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType = "text/html;charset=utf-8" %>
<%
out.println("cora☼ção<br>");
%>
<%request.setCharacterEncoding("UTF-8");%>
<script>

    var pessoa={nome:"alx",
                idade:23,
                tipo:{a:"a",b:"b",},
                endereco:"rua almeida louca"};
    //patt = new regex("^6");
    //patt.test("6sd");
    let objp=pessoa;
    
    let str="";
    document.write("pessoa:"+pessoa.constructor+"<br>");
        for(x in pessoa){
            show(this);
     //if(typeof x === 'object' )
        document.write(x+"->"+pessoa[x]+"<br>");
        //str+=x+"->"+pessoa[x];
    }
    document.write("<br><br><br>");
        document.write("objp:"+objp.constructor.name+"<br>");
    for(x in objp){
     //if(typeof x === 'object' )
        document.write(x+"->"+objp[x]+"<br>");
        //str+=x+"->"+pessoa[x];
    }
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