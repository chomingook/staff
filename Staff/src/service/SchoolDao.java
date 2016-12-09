package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SchoolDao {
	private final String driverClassName = "com.mysql.jdbc.Driver";
	private final String url = "jdbc:mysql://127.0.0.1:3306/db09jmk?useUnicode=true&characterEncoding=euckr";
	private final String username = "dbid09jmk";
	private final String password = "dbpw09jmk";
	
	 public ArrayList<School> selectschool() {
	        ArrayList<School> list = new ArrayList<School>();
	        Connection connection = null;
	        PreparedStatement statement = null;
	        ResultSet resultset = null;
	        String sql = "SELECT * FROM school ORDER BY no ASC ";
	        try {
	            connection = this.getConnection();
	            statement = connection.prepareStatement(sql);
	           
	            
	            resultset = statement.executeQuery();
	            while(resultset.next()) {
	            	School school = new School();
	            	school.setNo(resultset.getInt("no"));
	            	school.setName(resultset.getString("name"));
	              
	                list.add(school);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            this.close(connection, statement, resultset);
	        }
	        return list;
	    }
	
	
	private Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(this.driverClassName);
			connection = DriverManager.getConnection(this.url, this.username, this.password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

	private void close(Connection connection, Statement statement, ResultSet resultset) {
		if (resultset != null) {
			try {
				resultset.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
