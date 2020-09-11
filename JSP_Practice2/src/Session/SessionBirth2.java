package Session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionBirth2
 */
@WebServlet("/SessionBirth2")
public class SessionBirth2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionBirth2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		//이전 서블릿에서 저장한 값을 빼봄
		//getAttribute - Object형 -> 모든 객체 다 저장 가능
		Object obj = session.getAttribute("name");
		
		//받는 객체의 자료형을 알고 있다면 그냥 그걸로 선언해도됨
		//String ㅁㅁ = (String)Object - casting
		String name = (String)session.getAttribute("name");
		int age = (Integer)session.getAttribute("age");
		PrintWriter out = response.getWriter();
		out.println(name+"<br/>"+age);
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
