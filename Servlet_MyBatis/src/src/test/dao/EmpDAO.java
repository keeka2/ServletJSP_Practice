package src.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import test.vo.EmpVO;
import test.vo.MyBatisConnectionFactory;

public class EmpDAO {
	public static EmpVO search_empno(String temp_no) {
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		List<EmpVO> list = sql.selectList("emp.search_no", temp_no);
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}
	
}
