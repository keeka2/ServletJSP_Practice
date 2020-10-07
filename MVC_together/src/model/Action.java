package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//현재 인터페이스는 앞으로 만들어질 모든 Action객체들을 통칭하기 위해 필요
//인터페이스 메서드 재정의 시 public으로 선언해야함
public interface Action {
	String execute(HttpServletRequest request, HttpServletResponse response);
}

