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
 * Servlet implementation class DeleteCourseController
 */
@WebServlet("/DeleteCourseController")
public class DeleteCourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteCourseController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] listCourse = request.getParameterValues("course");
		String email = (String) request.getSession(false).getAttribute("email");
		Connection connection = DBConnection.CreateConnection();
		for(int i = 0; i < listCourse.length; i++)
		{
			MyCoursesDAO.deleteCourse(connection,email,listCourse[i]);
		}
		request.setAttribute("TB", "Cập nhật thành công");
		RequestDispatcher rd = request.getRequestDispatcher("MyCourses.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
