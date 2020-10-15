package mybatis.dao;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import mybatis.vo.BoardVO;

public class BoardDAO {
	public static BoardVO[] getList(String subject, int begin, int end) {
		Map<String,String> map = new Hashtable<String,String>();
		map.put("subject", subject);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		
		SqlSession sql = FactoryService.getFactory().openSession();
		List<BoardVO> list = sql.selectList("board.list",map);
		BoardVO[] ret = null;
		if(list!=null && list.size()>0) {
			ret = new BoardVO[list.size()];
			list.toArray(ret);
		}
		sql.close();
		return ret;
	}
	
	public static int getTotal(String subject) {
		SqlSession sql = FactoryService.getFactory().openSession();
		int cnt = sql.selectOne("board.totalCount", subject);
		sql.close();
		return cnt;
	}
	
	public static void insertPost(String title, String file_name, String content, String ip) {
		SqlSession sql = FactoryService.getFactory().openSession();
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setFile_name(file_name);
		vo.setContent(content);
		vo.setIp(ip);
		
		int check = sql.insert("board.insertPost", vo);
		if(check>0) {
			sql.commit();
		}else {
			sql.rollback();
		}
		sql.close();
	}

}
