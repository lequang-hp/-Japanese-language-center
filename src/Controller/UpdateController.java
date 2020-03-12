package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UpdateDAO;


@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String newPass = request.getParameter("newPass");
		
		if(UpdateDAO.checkLogin(name,pass)) {
			if(UpdateDAO.updatePass(name,newPass)) {
				request.setAttribute("TB", "Cập nhật thành công");
				RequestDispatcher rd = request.getRequestDispatcher("Account.jsp");
				rd.forward(request, response);
			}
		}
		
		else {
			request.setAttribute("TB", "Thay đổi không thành công. Check lại thông tin");
			RequestDispatcher rd = request.getRequestDispatcher("Account.jsp");
			rd.forward(request, response);
		}
	}

}
