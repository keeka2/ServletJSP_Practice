package model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.dao.MemberDAO;
import mybatis.service.FactoryService;
import mybatis.vo.MemVO;

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String path = "/Jsp/login.jsp";
		//사용자의 요청방법에 따라 구분! post방식일 때를 알아내 보자!
		if(request.getMethod().equalsIgnoreCase("post")) {
			//id와 pw를 받아서 MyBatis환경을 이용하여 인증을 확인한다
			//정확한 정보일 때 (vo가 null이 아닐 때)만 HttpSession에 vo객체를 "vo"라는 이름으로 저장한다.
			Map<String, String> map = new HashMap<String,String>();
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			MemVO user = MemberDAO.login(id, pw);
			if(user!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("login_chk", true);
				session.setAttribute("user",user);
			path="/Jsp/index.jsp";
			}
		}
		return path;
	}

}
