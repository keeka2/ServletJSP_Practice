package model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.dao.MemoDAO;
import mybatis.vo.MemoVO;

public class NoticeAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// index화면에서 공지사항 파트의 [더보기]를 클릭했을 때 오는 곳!
		List<MemoVO> list = MemoDAO.getList();
		System.out.println(list.size());
		MemoVO[] ar = null;
		if(list != null && list.size()>0) {
			ar= new MemoVO[list.size()];
			list.toArray(ar);
		}
		request.setAttribute("list", list);
		
		return "/Jsp/notice.jsp";
	}

}
