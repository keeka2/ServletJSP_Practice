package Session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionServlet2
 */
@WebServlet("/SessionServlet2")
public class SessionServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 다시 HttpSession을 얻어내자
		// session이 새롭게 생긴게 아니라 톰켓환경의  서버에서 가져온거임
		HttpSession session = request.getSession();
		
		//이전 서블릿에서 저장한 값을 빼봄
		//getAttribute - Object형 -> 모든 객체 다 저장 가능
		Object obj = session.getAttribute("m_type");
		
		//받는 객체의 자료형을 알고 있다면 그냥 그걸로 선언해도됨
		//String ㅁㅁ = (String)Object - casting
		String v1 = (String)session.getAttribute("v1");
		System.out.println(v1);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
