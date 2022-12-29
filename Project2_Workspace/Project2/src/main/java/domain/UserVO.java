package domain;

public class UserVO {
	private String id;
	private String password;
	private String nickname;
	private String regdate;
	private int admin;
	
	public UserVO() {}
	public UserVO(String id, String password) {
		this.id = id;
		this.password = password;
	}
	public UserVO(String id, String password, String nickname) {
		this.id = id;
		this.password = password;
		this.nickname = nickname;
	}
	public UserVO(String id, String password, String nickname, String regdate, int admin) {
		this.id = id;
		this.password = password;
		this.nickname = nickname;
		this.regdate = regdate;
		this.admin = admin;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
}

//create table user(
//id varchar(100) not null primary key,
//password varchar(100) not null,
//nickname varchar(100) not null,
//regdate datetime default current_timestamp);