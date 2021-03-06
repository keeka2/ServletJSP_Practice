package market.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import market.action.Action;
import market.action.IndexAction;
import market.action.SellAction;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = getServletContext();
		request.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		Action action = null;
		if(type==null || type.equals("list")) {
			action=new IndexAction();
		}else if(type.equals("sell")) {
			action=new SellAction();
		}
		
		String viewPath = action.execute(request,response);
		if(viewPath!=null) {
			RequestDispatcher disp = request.getRequestDispatcher(viewPath);
			disp.forward(request, response);
		}else {
			//viewPath가 null을 가졌다면 목록창으로 이동한다.
			response.sendRedirect("Controller");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
