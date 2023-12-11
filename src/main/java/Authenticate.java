
import java.sql.*;

public class Authenticate {
	public String authenticateUser(Users user) {
		String userId = user.getUserId(); 
	    String password = user.getPassword();
	    Connection con = null;
	    Statement statement = null;
	    ResultSet resultSet = null;
	 
	    String usernameDB = "";
	    String passwordDB = "";
	
	    try {
	    	con = DBConnection.createConnection(); 
	        statement = con.createStatement(); 
	        resultSet = statement.executeQuery("select userId, password, role from employees"); 
	 
	        while(resultSet.next()) {
	        	usernameDB = resultSet.getString("userId"); 
	        	passwordDB = resultSet.getString("password");
	        	String role = resultSet.getString("role");
	        	
	        	if(userId.equals(usernameDB) && password.equals(passwordDB)) {
	        		return role;
	            }
	        }
	    }
	        
	    catch(SQLException e) {
	    	e.printStackTrace();
	    }
	    return "Invalid UserID/Password"; 
	    //}
	}

}
