package ex1_action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DateAction {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date now = new Date(System.currentTimeMillis());
		request.setAttribute("now", now.toString());
		return "/ex1/date.jsp";
	}
}
