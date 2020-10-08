package model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybatis.dao.MemoDAO;
import mybatis.vo.MemoVO;

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
		List<MemoVO> list3 = MemoDAO.getList3();
		request.setAttribute("list3", list3);
		return "/Jsp/index.jsp";
	}
}
