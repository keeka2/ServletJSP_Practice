package market.action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SellAction implements Action {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String viewPath = "/market/sellFormat.jsp";
		
		String content_Type = request.getContentType();
		if(content_Type != null && content_Type.startsWith("multipart")) {
			// 파라미터 받아서 DB에 저장!!!!
			try {
				//첨부파일을 저장할 폴더를 절대경로화 시킨다.
				ServletContext application = request.getServletContext();
				
				String path = application.getRealPath("/upload");
				
				MultipartRequest mr = new MultipartRequest(request, path,1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
				//첨부된 파일이 bbs_upload라는 폴더로 업로드 된다.
				
				//bbs테이블에 저장할 업로드된 파일명을 얻어야 한다.
				
				String p_name = mr.getParameter("p_name");
				String p_content = mr.getParameter("p_content");
				String p_price = mr.getParameter("p_price");
				String p_category = mr.getParameter("p_category");
				String p_quant = mr.getParameter("p_quant");
				String seller = mr.getParameter("seller");
				File img1 = mr.getFile("p_thumbnail");
				String p_thumbnail = img1.getName();
				File img2 = mr.getFile("p_image");
				String p_image = img1.getName();
		
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			viewPath=null;
		}
		return viewPath;
	}
	
}
