/*<!-- School Information Management System-->
<!--Batch 4.1-->
<!--G333 -->
<!--Dolawattage K.J. -->
<!--IT22604330 -->*/
package com.grade;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class gradesDbUtil {
	
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs= null;
	private static boolean isSuccess;
	
	public static List<grade> getGrades() {
	    ArrayList<grade> grades = new ArrayList<>();

	    try {
	        con = DBconnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "select * from grades";
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            int assignment1 = rs.getInt(3);
	            int midexam = rs.getInt(4);
	            int finalexam = rs.getInt(5);
	            String finalgrade = rs.getString(6);
	            String status = rs.getString(7);

	            grade g = new grade(id, name, assignment1, midexam, finalexam, finalgrade, status);
	            grades.add(g);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return grades;
	}

	
	
	
	
	
	public static boolean Insertgrade(String name,String assignment1,String midexam,String finalexam,String finalgrade,String status) {
		
		boolean isSuccess = false;
		
	
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into grades values (0,'"+name+"','"+assignment1+"','"+midexam+"','"+finalexam+"','"+finalgrade+"','"+status+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess =false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}

	public static boolean Updategrade(String id,String name,String assignment1,String midexam,String finalexam,String finalgrade,String status) {
	
		
		try {
			con = DBconnect.getConnection();
			stmt =con.createStatement();
			String sql = "update grades set name='"+name+"',assignment1='"+assignment1+"',midexam='"+midexam+"',finalexam='"+finalexam+"',grade='"+finalgrade+"',status='"+status+"'"
			+"where id='"+id+"'";
			
            int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
					
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}

public static boolean deleteGrade(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from grades where id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
}
