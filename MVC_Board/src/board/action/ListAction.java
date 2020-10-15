package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.util.Paging;
import mybatis.dao.BoardDAO;
import mybatis.vo.BoardVO;

public class ListAction implements Action {
	
	int blockList = 10;
	int blockPage = 5;
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String page = request.getParameter("page");
		String subject = request.getParameter("subject");
		int p = 1;
		if(page!=null) {
			p = Integer.parseInt(page);
		}
		
		if(subject==null) {
			subject="a";
		}
		
		int rowTotal = BoardDAO.getTotal(subject);
		Paging cur_page = new Paging(p,rowTotal, blockList, blockPage);
		System.out.println(rowTotal);
		System.out.println(cur_page.getBegin());
		System.out.println(cur_page.getEnd());
		BoardVO[] arr = BoardDAO.getList(subject, cur_page.getBegin(), cur_page.getEnd());
		request.setAttribute("arr", arr);
		
		request.setAttribute("page_html", cur_page.getSb().toString());
		return "/board/list.jsp";
	}

}
