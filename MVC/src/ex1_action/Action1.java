package ex1_action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Action1 {
	private int value = 10;
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//다른 파라미터가 있다면 여기서 받을 수 있음.
		String value = request.getParameter("value");
		if(value!=null) {
			int val = Integer.parseInt(value);
			request.setAttribute("res", this.value * val);
		}else {
			request.setAttribute("res", 0);
		}
		return "/ex1/view4.jsp";
	}
}
