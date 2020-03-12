package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MyCoursesDAO;
import DB.DBConnection;

/**
 * Servlet implementation class MyCoursesController
 */
@WebServlet("/MyCoursesController")
public class MyCoursesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyCoursesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String course = request.getParameter("course");
		String email = (String) request.getSession(false).getAttribute("email");
		
		if(MyCoursesDAO.CheckCourse(email, course)) {
			Connection conn = DBConnection.CreateConnection();
			MyCoursesDAO.InsertCourse(conn,email,course);
			request.setAttribute("TB", "Đăng ký thành công");
			RequestDispatcher rd = request.getRequestDispatcher("course_" + course + ".jsp");
			rd.forward(request, response);
		}
		
		else {
			request.setAttribute("TB", "Khóa học này đã tồn tại");
			RequestDispatcher rd = request.getRequestDispatcher("course_" + course + ".jsp");
			rd.forward(request, response);
		}
	}

}
