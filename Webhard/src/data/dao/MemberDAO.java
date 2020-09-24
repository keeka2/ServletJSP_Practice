package data.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import data.mybatis.MyBatisConnectionFactory;
import data.vo.MemberVO;

public class MemberDAO {
	public static boolean register(String m_id,String m_pw,String m_name,String m_addr,String m_phone,String m_email) {
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		Map map = makeMap(m_id,m_pw,m_name,m_addr,m_phone,m_email);
		int c = sql.insert("member.register", map);
		boolean value=false;
		if(c>0) {
			sql.commit();
			value=true;
		}else {
			sql.rollback();
		}
		sql.close();
		return value;
	}
	public static MemberVO login(String m_id, String m_pw) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("m_id",m_id);
		map.put("m_pw",m_pw);
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		MemberVO mvo = sql.selectOne("member.login",map);
		sql.close();
		return mvo;
	}
	
	public static HashMap<String,String> makeMap(String m_id,String m_pw,String m_name,String m_addr,String m_phone,String m_email){
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("m_id",m_id);
		map.put("m_pw",m_pw);
		map.put("m_name",m_name);
		map.put("m_addr",m_addr);
		map.put("m_phone",m_phone);
		map.put("m_email",m_email);
		return map;
	}
}
