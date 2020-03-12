package BEAN;

public class MyCourses {
	private String email;
	private String course;
	
	public MyCourses(String email,String course) {
		this.email = email;
		this.course = course;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
	
}
