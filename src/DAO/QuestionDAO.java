package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import BEAN.Question;
import DB.DBConnection;

public class QuestionDAO {
	static String []das = new String[10];
	public static ArrayList<Question> QuestionInfo(String nameTable){
		ArrayList<Question> questions = new ArrayList<Question>();
		
		String sql = "SELECT * FROM test." +nameTable+" ORDER BY RAND() LIMIT 10"; // Lay random 10 cao hoi
	
		try {
			Connection connection = DBConnection.CreateConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			int id = 1;
			while(rs.next()) {
				Question question = new Question(id,rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getString(6),rs.getString(7));
				questions.add(question);
				das[id-1] = rs.getString(7);
				id = id + 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return questions;
	}
	
	public static int Point(String da,int i) {
		if(das[i-1].compareTo(da) == 0)
			return 1;
		return 0;
	}	
	
	public static String[] DA() {
		return das;
	}
}
