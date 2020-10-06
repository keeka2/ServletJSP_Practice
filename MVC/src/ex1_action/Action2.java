package ex1_action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.DataVO;

public class Action2 {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		if(name != null && age!=null) {
			
			DataVO dvo = new DataVO();
			dvo.setName(name);
			dvo.setAge(Integer.parseInt(age));
			//VO를 JSP에서 표현 할 수 있도록 request에 저장
			request.setAttribute("dvo",dvo);
		}
		return "/ex1/data.jsp";
	}
}
