package ex1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller1
 */
@WebServlet("/Controller1")
public class Controller1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 무조건 요청을 받는데 type이라는 파라미터 값을 받는다.
		String type = request.getParameter("type");
		
		/*
		 * type의 값이 만약 null이거나 'v1'이면 view1.jsp로 경로를 지정
		 * */
		String viewPath = null;
		if(type==null || type.equals("v1")) {
			//기존 방식
			viewPath = "/ex1/view1.jsp";
			request.setAttribute("msg", "안녕하세요");
		}else if(type.equals("v2")) {
			viewPath = "/ex1/view2.jsp";
			request.setAttribute("str", "hello --__--");
		}else if(type.contentEquals("v3")){
			viewPath = "/ex1/view3.jsp";
			int res = 10*1092;
			request.setAttribute("res", res);
		}
		
		//MVC에서 뷰 페이지 이동은 forward시킨다.
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
