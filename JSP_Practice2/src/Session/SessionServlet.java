package Session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// HttpSession처리
		//먼저 HttpSession객체를 요청 객체로부터 얻어내야 함
		HttpSession session = request.getSession();
		
		//HttpSession은 톰켓이 관리하고 있고, 디폴트가 접속자가 생길 때 마다 배당해 줌
		//세션은 서버가 갖고 있고 접속이 끊기면 사라짐
		
		//session에 값을 저장(Map과 같은 구조)
		session.setAttribute("m_type", 100);
		session.setAttribute("v1", "TEST");
		System.out.println("1");
		//session은 지역변수기 때문에  doGet이 끝나면 사라짐, 그래서 session이라는 지역변수는 메서드 끝나면 사라짐
		
		//다른 서블릿으로 이동 - 응답을 다른 곳(다른 서블릿)으로 해줌
		response.sendRedirect("SessionServlet2");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
