package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QuestionDAO;

/**
 * Servlet implementation class NopBai
 */
@WebServlet("/NopBai")
public class NopBai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NopBai() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int diem = 0;
		ArrayList<Integer> IDWrongAns = new ArrayList<Integer>();
		
		for(int i = 1; i <= 10; i++) {
			String da = request.getParameter("ans[" + i + "]");
			if(da != null) { //Chi tinh truong hop dien day du
				diem = diem + QuestionDAO.Point(da,i);
				if(QuestionDAO.Point(da,i) == 0)
					IDWrongAns.add(i);
			}
			
		}
		
		String []das = QuestionDAO.DA();
		request.setAttribute("list_da", das); //DS dap an
		request.setAttribute("result", diem); //Diem
		request.setAttribute("IDWrong", IDWrongAns); //DS cac cau sai
		RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
		rd.forward(request, response);
	}
}
