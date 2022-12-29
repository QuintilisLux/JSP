package domain;

public class PostVO {
	private int num;
	private String title;
	private String category;
	private String id;
	private String nickname;
	private String content;
	private String regdate;
	private int view_count;
	
	public PostVO() {};
	public PostVO(String title, String category, String id, String nickname, String content) {
		this.title = title;
		this.category = category;
		this.id = id;
		this.nickname = nickname;
		this.content = content;
	}
	public PostVO(int num, String title, String category, String id, String nickname, String content, String regdate, int view_count) {
		this.num = num;
		this.title = title;
		this.category = category;
		this.id = id;
		this.nickname = nickname;
		this.content = content;
		this.regdate = regdate;
		this.view_count = view_count;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
}