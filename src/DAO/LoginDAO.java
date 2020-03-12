package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import BEAN.Account;
import DB.DBConnection;

public class LoginDAO {
	public static boolean checkLogin(String email,String pass) {
		ArrayList<Account> accounts = new ArrayList<Account>();
		String sql = "SELECT *FROM account WHERE email = '" +email+ "' AND pass = '"+pass+"'";
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
	
}
