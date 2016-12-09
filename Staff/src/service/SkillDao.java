package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SkillDao {

	private final String driverClassName = "com.mysql.jdbc.Driver";
	private final String url = "jdbc:mysql://127.0.0.1:3306/db09jmk?useUnicode=true&characterEncoding=euckr";
	private final String username = "dbid09jmk";
	private final String password = "dbpw09jmk";
	//private String url  = 상수화 시킬려면 final을 넣어줘야함 = 상수는 값이 있어야함
	 public ArrayList<Skill> selectskill() {
	        ArrayList<Skill> list = new ArrayList<Skill>();
	        Connection connection = null;
	        PreparedStatement statement = null;
	        ResultSet resultset = null;
	        String sql = "SELECT * FROM skill ORDER BY no ASC ";
	        try {
	            connection = this.getConnection();
	            statement = connection.prepareStatement(sql);
	           
	            
	            resultset = statement.executeQuery();
	            while(resultset.next()) {
	            	Skill skill = new Skill();
	            	skill.setNo(resultset.getInt("no"));
	            	skill.setName(resultset.getString("name"));
	              
	                list.add(skill);
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

	//디볼트 생성자
// 생성자
	
	

