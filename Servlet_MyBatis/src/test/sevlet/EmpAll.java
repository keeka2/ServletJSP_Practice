package test.sevlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import test.vo.EmpVO;
import test.vo.MyBatisConnectionFactory;

/**
 * Servlet implementation class EmpAll
 */
@WebServlet("/EmpAll")
public class EmpAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SqlSession sql;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpAll() {
    	sql = MyBatisConnectionFactory.getSqlSession();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		List<EmpVO> emp = sql.selectList("emp.all");
		PrintWriter out = response.getWriter();

		for(int i=0;i<emp.size();i++) {
			EmpVO data = emp.get(i);
			out.println(data.getEname()+' '+data.getEmpno()+"</br>");
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
