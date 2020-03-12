package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Question;
import DAO.QuestionDAO;

@WebServlet("/GoiController")
public class GoiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GoiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nameTable = request.getParameter("goi"); //Lay ve ten cua bang sql: value
		ArrayList<Question> questions = QuestionDAO.QuestionInfo(nameTable);
		request.setAttribute("list_quest", questions);
		RequestDispatcher rd = request.getRequestDispatcher("Goi/goi.jsp");
		rd.forward(request, response);
	}
}
