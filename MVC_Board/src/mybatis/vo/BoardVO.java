package mybatis.vo;

import java.util.List;

public class BoardVO {
    private String post_idx, 
    			   writer_idx, 
    			   title, 
    			   content, 
    			   board_subject, 
    			   file_name, 
    			   write_date, 
    			   ip, 
    			   hit, 
    			   status;
    private List<CommentVO> comment_List;


	public String getPost_idx() {
		return post_idx;
	}

	public void setPost_idx(String post_idx) {
		this.post_idx = post_idx;
	}

	public String getWriter_idx() {
		return writer_idx;
	}

	public void setWriter_idx(String writer_idx) {
		this.writer_idx = writer_idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getBoard_subject() {
		return board_subject;
	}

	public void setBoard_subject(String board_subject) {
		this.board_subject = board_subject;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public List<CommentVO> getComment_List() {
		return comment_List;
	}

	public void setComment_List(List<CommentVO> comment_List) {
		this.comment_List = comment_List;
	}
    
}
