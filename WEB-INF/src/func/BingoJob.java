import conexao.*;
import java.io.*;
import java.sql.*;
import javax.sql.*;

public class BingoJob{
public String ceo="alxsey Rebouรงas";
public String titulo="BingoJob";
public final String data="28/07/20182018";
            
      

    
    
    

    
    public void setTitulo(String titulo){
        this.titulo=titulo;
        
    }
    
    public void setCeo(String ceo){
        this.ceo=ceo;
        
    }
    
    
    public String getTitulo(){
        return this.titulo;
    }
    
    public String getCeo(){
        return this.ceo;
        
    }
    /*
  public String titulo(){
        Statement st=con.createStatement();
ResultSet rs=null;
PreparedStatement pstatement = null;
        rs=st.executeQuery("select nome from empresa");
            String titulo=rs.getString("nome");
  return titulo;  
  }
    */
}