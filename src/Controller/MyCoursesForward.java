package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MyCoursesDAO;

/**
 * Servlet implementation class MyCoursesForward
 */
@WebServlet("/MyCoursesForward")
public class MyCoursesForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MyCoursesForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email =  (String) request.getSession(false).getAttribute("email");
		ArrayList<String> courses = MyCoursesDAO.DisplayCourses(email);
		request.setAttribute("list", courses);
		
		RequestDispatcher rd = request.getRequestDispatcher("MyCourses.jsp");
		rd.forward(request, response);
	}


}
