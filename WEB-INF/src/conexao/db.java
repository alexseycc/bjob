package conexao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class db{
    
    
public static Connection getCon() throws SQLException  {
 
    try{
        Class.forName("com.mysql.jdbc.Driver");
return DriverManager.getConnection("jdbc:mysql://localhost/bingojob", "root", "123654");
    }
    
    catch(ClassNotFoundException e){
        throw new SQLException(e.getException());
    }
}
    
    
}