package Session;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionBirth1
 */
@WebServlet("/SessionBirth1")
public class SessionBirth1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionBirth1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u_name = request.getParameter("m_name");
		String u_birth = request.getParameter("m_birth");

		int Year = Integer.parseInt(u_birth.substring(0,4));
		Calendar now = Calendar.getInstance();
		HttpSession session = request.getSession();
		session.setAttribute("name", u_name);
		session.setAttribute("age", now.get(Calendar.YEAR)-Year);

		//session은 지역변수기 때문에  doGet이 끝나면 사라짐, 그래서 session이라는 지역변수는 메서드 끝나면 사라짐
		
		//다른 서블릿으로 이동 - 응답을 다른 곳(다른 서블릿)으로 해줌
		response.sendRedirect("SessionBirth2");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
