package ex1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex1_action.Action1;
import ex1_action.Action2;
import ex1_action.Action3;

/**
 * Servlet implementation class Controller4
 */
@WebServlet("/Controller4")
public class Controller4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// t1: Action1 수행 | t2: action2 수행
		String type = request.getParameter("type");
		String viewPath = null;
		if(type.equals("t1")) {
			Action1 ac1 = new Action1();
			viewPath = ac1.execute(request, response);
		}else if(type.equals("t2")) {
			Action2 ac2 = new Action2();
			viewPath = ac2.execute(request, response);
		}else if(type.equals("t3")) {
			Action3 ac3 = new Action3();
			viewPath = ac3.execute(request, response);
		}
		RequestDispatcher disp = request.getRequestDispatcher(viewPath);
		disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
