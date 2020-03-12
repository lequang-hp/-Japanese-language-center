package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import BEAN.Comment;
import DB.DBConnection;

public class CommentDAO {
	public static void InsertComment (Connection conn,Comment comment) {
		PreparedStatement ptmt = null;
		String sql = "insert into comment(user,content,email) values(?,?,?)";
		
		try {
			ptmt = conn.prepareStatement(sql);
			String user = comment.getUser();
			String content = comment.getContent();
			String email = comment.getEmail();
			ptmt.setString(1, user);
			ptmt.setString(2, content);
			ptmt.setString(3,email);
			
			ptmt.executeUpdate();
			
			ptmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static ArrayList<Comment> DisplayComment(){
		ArrayList<Comment> list = new ArrayList<Comment>();
		String sql = "SELECT user,content FROM comment";
		try {
			Connection conn = DBConnection.CreateConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Comment comment = new Comment();
				String user = rs.getString("user");
				String content = rs.getString("content");
				comment.setUser(user);
				comment.setContent(content);
				list.add(comment);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
