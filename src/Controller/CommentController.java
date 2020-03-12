package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Comment;
import DAO.CommentDAO;
import DB.DBConnection;

/**
 * Servlet implementation class CommentController
 */
@WebServlet("/CommentController")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getCharacterEncoding() != null) {
			request.setCharacterEncoding("UTF-8");
		}
		
		String user = request.getParameter("user");
		String content = request.getParameter("content");
		String email = request.getParameter("email");
		
		
		Comment cmt = new Comment();
		cmt.setUser(user);
		cmt.setContent(content);
		cmt.setEmail(email);
		Connection conn = DBConnection.CreateConnection();
		CommentDAO.InsertComment(conn, cmt); // Insert Comment vao co so du lieu
		
		ArrayList<Comment> list = CommentDAO.DisplayComment();
		
		request.setAttribute("list_cmt", list);
		RequestDispatcher rd = request.getRequestDispatcher("DisplayComment.jsp");
		rd.forward(request, response);
		
		
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
