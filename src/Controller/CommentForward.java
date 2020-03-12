package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Comment;
import DAO.CommentDAO;


@WebServlet("/CommentForward")
public class CommentForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CommentForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Comment> cmts = CommentDAO.DisplayComment();
		request.setAttribute("list_cmt", cmts);
		RequestDispatcher rd = request.getRequestDispatcher("share.jsp");
		rd.forward(request, response);
	}

}
