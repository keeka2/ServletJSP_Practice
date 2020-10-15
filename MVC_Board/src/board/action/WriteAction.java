package board.action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import mybatis.dao.BoardDAO;

public class WriteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String viewPath = "/board/write.jsp";

		//파일이 첨부되어 넘어 올 때는 MultipartRequest사용해야함
		String content_Type = request.getContentType();
		System.out.println(content_Type);
		if(content_Type != null && content_Type.startsWith("multipart")) {
			// 파라미터 받아서 DB에 저장!!!!
			try {
				//첨부파일을 저장할 폴더를 절대경로화 시킨다.
				ServletContext application = request.getServletContext();
				
				String path = application.getRealPath("/upload");
				
				MultipartRequest mr = new MultipartRequest(request, path,1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
				//첨부된 파일이 bbs_upload라는 폴더로 업로드 된다.
				
				//bbs테이블에 저장할 업로드된 파일명을 얻어야 한다.
				File f = mr.getFile("file");
				String fname = null;
				if(f != null) {
					//파일이 첨부된 경우
					fname = f.getName();
				}
				
				String title = mr.getParameter("title");
				String writer = mr.getParameter("writer");
				String content = mr.getParameter("content");
				String ip = request.getRemoteAddr();
				String password = mr.getParameter("pwd");			
				//System.out.println("title: "+title);
				BoardDAO.insertPost(title, fname, content, ip);
			} catch (Exception e) {
				e.printStackTrace();
			}
			viewPath=null;
		}
		return viewPath;
	}
	
	
}