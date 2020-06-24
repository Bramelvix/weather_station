package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnection {

	private final String sqlServerAddres;
	private final String sqlServerlogin;
	private final String sqlServerPass;
	private Connection connection;

	public SqlConnection(String address, String login, String pass) {
		this.sqlServerAddres = address;
		this.sqlServerlogin = login;
		this.sqlServerPass = pass;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		if (connection == null) {
			createConnection();
		} else {
			try {
				if (connection.isClosed()) {
					createConnection();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return connection;
	}

	private void createConnection() {
		try {
		connection = DriverManager.getConnection(sqlServerAddres, sqlServerlogin, sqlServerPass);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void close() {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
