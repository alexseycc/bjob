package func;
import javax.sql.*;
    
public class Empresa{
    public String nome;
    public String email;
    public String area;
    public String endereco;
    public String telefone;
    public String parametro="";
   
    public void setNome(String nome){
    this.nome=nome;
    }
    
    public String getNome(){
        return this.nome;
        
    }
    
        public void setEmail(String email){
    this.email=email;
    }
    
    public String getEmail(){
        return this.email;
        
    }
    
    
        public void setArea(String Area){
    this.area=Area;
    }
    
    public String getArea(){
        return this.area;
        
    }
    
            public void setEndereco(String endereco){
    this.endereco=endereco;
    }
    
    public String getEndereco(){
        return this.endereco;
        
    }
    
            public void setTelefone(String telefone){
    this.telefone=telefone;
    }
    
    public String getTelefone(){
        return this.telefone;
        
    }
    
 

//setando os campos do db
public String campos(String campo){
    this.parametro=campo;
return this.parametro;
}
    //dividindo em array os campos
public String[] camposDivididos(){
String[] args=parametro.split("[,]");
return args;
       //return Arrays.toString(args);
}

    //descobrindo quantos campos tem
public int incremento(){
    String[] args=parametro.split("[,]");
    int quant=args.length;
    return quant;
}
    //colocando ps PREPARESTATEMENT embasado na quant dos campo
    public String getValue(){
String symbol="?";
String comma=",";
String res="";
    for(int i=1;i<=incremento();i++){
        if(i==incremento())
        res+=symbol;  
        else{
        res+=(symbol+comma);  
        }
        }
return res;
}  
 
    /*
    public String[] emp(String desc,Connection con){
PrepareStatement pst = con.preparedstatement("select * from empresa where descricao=?");
pst.setString(1,desc);
ResultSet rs=pst.executeQuery();
rs.next();
        return rs.getString("nome");
    }
    */
}