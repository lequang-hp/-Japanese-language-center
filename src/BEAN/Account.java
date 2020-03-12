package BEAN;

public class Account {
	private String user;
    private String pass;
    private String email;
    
    public Account(String email,String pass){
        this.email = email;
        this.pass = pass;
    }
    
    public Account(String email,String pass,String user) {
    	this.email = email;
    	this.pass = pass;
    	this.user = user;
    }
    
    public Account() {
    	
    }

    public Account(String email) {
    	this.email = email;
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
