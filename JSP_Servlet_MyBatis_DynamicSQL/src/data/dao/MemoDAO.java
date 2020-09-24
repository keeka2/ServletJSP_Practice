package data.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import data.vo.MemoVO;
import mybatis.factory.MyBatisConnectionFactory;

public class MemoDAO {
	public static boolean add(String writer, String content) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date time = new Date();
		String reg_date = format1.format(time);
		MemoVO mvo = new MemoVO();
		mvo.setWriter(writer);
		mvo.setContent(content);
		mvo.setReg_date(reg_date);
		
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		boolean val = false;
		int ch = sql.insert("memo.add", mvo);
		if(ch>0) {
			val=true;
			sql.commit();
		}else {
			sql.rollback();
		}
		sql.close();
		return val;
	}
	
	public static List<MemoVO> all(){
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		List<MemoVO> list = sql.selectList("memo.all");
		return list;
	}
	
	public static MemoVO select(String idx){
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		MemoVO mvo = sql.selectOne("memo.one", idx);
		return mvo;
	}
	
	public static boolean update(String idx, String writer, String content) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date time = new Date();
		String reg_date = format1.format(time);
		Map<String, String> map = new HashMap<String, String>();
		map.put("idx",idx);
		map.put("writer",writer);
		map.put("content",content);
		map.put("reg_date",reg_date);
		
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		boolean val = false;
		int ch = sql.update("memo.edit", map);
		if(ch>0) {
			val=true;
			sql.commit();
		}else {
			sql.rollback();
		}
		sql.close();
		return val;
	}
	
	public static List<MemoVO> search(String where, String what) {
		SqlSession sql = MyBatisConnectionFactory.getSqlSession();
		Map<String, String> map = new HashMap<String,String>();
		map.put("searchType",where);
		map.put("searchValue",what);
		List<MemoVO> list =sql.selectList("memo.search",map);
		sql.close();
		return list;
	}
}
