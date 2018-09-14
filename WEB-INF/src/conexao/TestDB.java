package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import func.Empresa;
public class TestDB {

 public static Connection conectado(){
      Connection con=null;
          try {
	 Class.forName("com.mysql.jdbc.Driver");  //Descobrindo o driver
	 //System.setProperty("jdbc.Drivers","com.mysql.jdbc.Driver");
              con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/bingojob", "root", "123654");    //conectando com o banco
   }
      catch(Exception e){
System.out.println("not");
          
      }
 return con; 
 }
}