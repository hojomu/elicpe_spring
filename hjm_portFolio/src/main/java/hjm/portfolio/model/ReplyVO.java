package hjm.portfolio.model;

public class ReplyVO {
	private int rno;			// 댓글번호
	private String content;		// 댓글내용
	private String id;			// 아이디
	private String replydate;	// 댓글작성일
	private int board_no;			// 게시판번호
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [rno=" + rno + ", content=" + content + ", id=" + id + ", replydate=" + replydate + ", board_no=" + board_no
				+ "]";
	}
}
