package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if(session.getAttribute("user")!=null && (boolean)session.getAttribute("login_chk")==true) {
			session.removeAttribute("user");
			session.setAttribute("login_chk",false);
		}
		
		return "/Jsp/index.jsp";
	}

}
