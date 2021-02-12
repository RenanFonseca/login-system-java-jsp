package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import core.SingleConnection;

public class LoginDao {
	
	private Connection connection;
	
	public LoginDao() {
		connection = SingleConnection.getConnection();
	}
	
	public boolean validateLogin(String login, String senha) throws Exception {
		String sql = "SELECT * FROM usuario where login = '"+login+"' and senha= '"+senha+"'";
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();
		if(resultSet.next()) {
			return true;
		}
		
		return false;
	}

}
