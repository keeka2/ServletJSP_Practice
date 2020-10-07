package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//로그인 했는지 안했는지 => 로그인 하면 session에 user라는 이름으로 저장
		HttpSession ss = request.getSession();
		Object user = ss.getAttribute("user");
		if(user!=null) {
			//로그인
			request.setAttribute("login_chk", true);
		}else {
			//X
			request.setAttribute("login_chk", false);
		}
		return "/Jsp/index.jsp";
	}
}
