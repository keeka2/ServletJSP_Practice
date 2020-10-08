package mybatis.dao;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import mybatis.vo.MemoVO;

public class MemoDAO {

	public static List<MemoVO> getList(){
		SqlSession ss = FactoryService.getFactory().openSession();
		
		List<MemoVO> list = ss.selectList("memo.total");
		ss.close();
		
		return list;
	}
	
	public static List<MemoVO> getList3(){
		SqlSession ss = FactoryService.getFactory().openSession();
		
		List<MemoVO> list = ss.selectList("memo.total3");
		ss.close();
		
		return list;
	}
	
	//메모를 저장하는 기능
	public static boolean add(String writer, String content, String ip) {
		//인자로 넘어온 값들을 add라는 mapper를 호출하면서 전달해야 하므로
		// 하나의 Map구조에 저장한다.
		Map<String, String> map = new Hashtable<String, String>();
		map.put("writer",writer);
		map.put("content",content);
		map.put("ip",ip);
		
		boolean value = false;//반환값
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.insert("memo.add", map);//저장에 성공하면 1을 반환받는다. 실패시 0
		if(cnt > 0) {
			value = true;
			ss.commit();// DB적용!
		}else {
			ss.rollback();// 지금까지 작업된 내용 모두 삭제하고 DB적용을 취소한다.
		}
		ss.close();
		return value;
	}
	
	//보기 기능
	public static MemoVO getMemo(String idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		MemoVO vo = ss.selectOne("memo.get_memo", idx);
		ss.close();
		return vo;
	}
	
	
	
	
	//검색 기능
	public static List<MemoVO> search(String searchType, String searchValue){
		Map<String, String> map = new Hashtable<String, String>();
		map.put("searchType", searchType);
		map.put("searchValue", searchValue);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<MemoVO> list = ss.selectList("memo.search", map);
		ss.close();
		
		return list;
	}
}






