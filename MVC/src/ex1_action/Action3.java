package ex1_action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.DataVO;

public class Action3 {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		DataVO dvo1 = new DataVO();
		dvo1.setName("JSK");
		dvo1.setAge(25);
		
		DataVO dvo2 = new DataVO();
		dvo2.setName("JCY");
		dvo2.setAge(32);
		
		DataVO dvo3 = new DataVO();
		dvo3.setName("HGM");
		dvo3.setAge(28);
		
		DataVO[] arrDVO = new DataVO[3];
		arrDVO[0]=dvo1;
		arrDVO[1]=dvo2;
		arrDVO[2]=dvo3;
		
		request.setAttribute("arrDVO", arrDVO);
		return "/ex1/arr.jsp";
	}
}
