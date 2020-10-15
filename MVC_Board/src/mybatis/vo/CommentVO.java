package mybatis.vo;

public class CommentVO {
    private String comment_idx, 
    			   post_idx, 
    			   writer_idx, 
    			   content, 
    			   write_date, 
    			   ip;

	public String getComment_idx() {
		return comment_idx;
	}

	public void setComment_idx(String comment_idx) {
		this.comment_idx = comment_idx;
	}

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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
}
