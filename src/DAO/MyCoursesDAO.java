package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import BEAN.MyCourses;
import DB.DBConnection;


public class MyCoursesDAO {
	public static boolean InsertCourse(Connection conn,String email,String course) {
		PreparedStatement ptmt = null;
		String sql = "insert into mycourses(email,course) values('" + email + "','"+course+"')";
		
		try {
			ptmt = conn.prepareStatement(sql);
			int kt = ptmt.executeUpdate();
			if(kt != 0)
				return true;
			ptmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}
	
	public static ArrayList<String> DisplayCourses(String email){
		ArrayList<String> courses = new ArrayList<String>();
		String sql = "SELECT course FROM mycourses WHERE email = '" + email + "'";
		
		try {
			Connection connection = DBConnection.CreateConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				String course = rs.getString(1);
				courses.add(course);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return courses;
	}
	
	public static boolean CheckCourse(String email,String course) {
		ArrayList<MyCourses> mycourses = new ArrayList<MyCourses>();
		String sql = "SELECT *FROM mycourses WHERE email = '" +email+"' AND course = '" + course + "'" ;
		try {
			Connection connection = DBConnection.CreateConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				MyCourses mycourse= new MyCourses(rs.getString(1),rs.getString(2));
				mycourses.add(mycourse);
			}
			
			connection.close();
			if(mycourses.size() > 0) {
            	return false; // Tai khoan da ton tai
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
	
	public static void deleteCourse(Connection conn,String email,String course) {
		PreparedStatement ps = null;
		String sql = "DELETE FROM mycourses WHERE email = '" + email+"' and course = '" + course+"'";
		try {
			ps = conn.prepareStatement(sql);
			ps.executeUpdate();
			ps.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
