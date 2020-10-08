package model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.dao.MemoDAO;
import mybatis.vo.MemoVO;

public class SearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String searchType = request.getParameter("searchType");
		String searchValue = request.getParameter("searchValue");
		List<MemoVO> list = MemoDAO.search(searchType, searchValue);
		MemoVO[] arr = null;
		if(list!=null) {
			arr=new MemoVO[list.size()];
			list.toArray(arr);
		}
		request.setAttribute("list", arr);
		return "/Jsp/notice.jsp";
	}

}
