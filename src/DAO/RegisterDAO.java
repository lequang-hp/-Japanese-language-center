package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import BEAN.Account;
import DB.DBConnection;

public class RegisterDAO {
	public static boolean CheckAccount(String email) {
		ArrayList<Account> accounts = new ArrayList<Account>();
		String sql = "SELECT *FROM account WHERE email = '" +email+"'" ;
		try {
			Connection connection = DBConnection.CreateConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Account account = new Account(rs.getString(3));
				accounts.add(account);
			}
			
			connection.close();
			if(accounts.size() > 0) {
            	return false; // Tai khoan da ton tai
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
	
	public static boolean InsertAccount(Connection conn,Account acc) {
		PreparedStatement ptmt = null;
		String pass = acc.getPass();
		String email = acc.getEmail();
		String sql = "insert into account(pass,email) values('" + pass + "','" +email+ "')";
		
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
}
