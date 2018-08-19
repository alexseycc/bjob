package conexao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;


public class conecta_banco {
    
public Connection con; 
public Statement st;
public ResultSet rs;
public String driver="com.mysql.jdbc.Driver";
 
    public void conectando(){
    try{
        //Class.forName("com.mysql.jdbc.Driver");
System.setProperty("jdbc.Drivers","com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/bingojob", "root", "123654");
    }
    
    catch(SQLException e){
    }    
    }
}
