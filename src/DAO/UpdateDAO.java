package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import BEAN.Account;
import DB.DBConnection;

public class UpdateDAO {
	public static boolean checkLogin(String name,String pass) {
		ArrayList<Account> accounts = new ArrayList<Account>();
		String sql = "SELECT *FROM account WHERE email LIKE '" +name+ "%' AND pass = '"+pass+"'";
		try {
			Connection connection = DBConnection.CreateConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Account account = new Account(rs.getString(3),rs.getString(2));
				accounts.add(account);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(accounts.size() == 1) return true;
		else return false;
	}
	
	public static boolean updatePass(String name,String newPass) {
		String sql = "UPDATE test.account SET pass = '"+newPass+"' WHERE email LIKE '" +name+"%'";
		try {
			Connection conn = DBConnection.CreateConnection();
			Statement stmt = conn.createStatement();
			int smt = stmt.executeUpdate(sql);
			if( smt == 1) return true; // Trả về số bản ghi đc update
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
