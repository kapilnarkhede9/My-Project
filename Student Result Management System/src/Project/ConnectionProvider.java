package Project;
import java.io.IOException;
import java.sql.*;

import javax.xml.ws.Response;
public class ConnectionProvider {

public static Connection getCon()
{
	try{
		Connection con=null;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
		return con;
	}
	catch(Exception e)
	{
	return null;
	}
}
}