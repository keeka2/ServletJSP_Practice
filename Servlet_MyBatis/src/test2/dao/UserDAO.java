package test2.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import test.vo.MyBatisConnectionFactory;
import test2.vo.UserVO;

public class UserDAO {
	public static List<UserVO> getTotal(){
		SqlSession ss = MyBatisConnectionFactory.getSqlSession();
		
		List<UserVO> list = ss.selectList("user.total");
		ss.close();
		return list;
	}
	
	public static UserVO check_password(String id, String pw) {
		SqlSession ss = MyBatisConnectionFactory.getSqlSession();
		List<UserVO> vo = ss.selectList("user.search_id", id);
		if(vo.size()>0) {
			UserVO uvo = vo.get(0);
			if(uvo.getPw().equals(pw)) {
				ss.close();
				return uvo;
			}
		}
		ss.close();
		return null;

		
	}
	
}
