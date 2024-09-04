/*<!-- School Information Management System-->
<!--Batch 4.1-->
<!--G333 -->
<!--Dolawattage K.J. -->
<!--IT22604330 -->*/
package com.grade;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/school";

	private static String userName = "root";
	private static String password = "abcd";
	private static Connection con;
	
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName,password);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		return con;
	}
}
