import conexao.*;
import java.io.*;
import java.sql.*;
import javax.sql.*;
    
public class Empresa{
    public String nome;
    public String email;
    public String area;
    public String endereco;
    public String telefone;
    
    
    
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
    
      
    
}