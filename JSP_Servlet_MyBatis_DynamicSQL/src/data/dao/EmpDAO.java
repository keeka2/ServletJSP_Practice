package data.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import data.vo.EmpVO;
import mybatis.factory.MyBatisConnectionFactory;


public class EmpDAO {
	public static List<EmpVO> search(String type, String value) {
		//인자를 2개 이상 보낼 때는 Map구조 사용
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType",type);
		map.put("searchValue", value);
		
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		List<EmpVO> list = sql.selectList("emp.search",map);
		sql.close();
		return list;
	}
	
	public static boolean add(EmpVO vo) {

		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		int ch = sql.insert("emp.add", vo);
		boolean val = false;
		if(ch>0) {
			val=true;
			sql.commit();
		}else {
			sql.rollback();
		}
		sql.close();
		return val;

	}
}

