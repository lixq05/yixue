package entity;

import java.util.Date;

public class User {
	private int id;
	private String username; //用户昵称2
	private String email; //用户邮箱3
	private String uname; //用户真实姓名4
	private String upsw;//用户密码5
	private String image;//用户头像6
	private String school; //所属学校7
	private String signature; //个性签名8
	private int friends;//好友数量9
	private int fans;//粉丝数量10
	private int type;//用户类别11
	private String sex;//用户性别
	private Date time;//注册时间
	private String hobby;
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	public String getEmail() {
		return email;
	}
	public String getUname() {
		return uname;
	}
	public String getUpsw() {
		return upsw;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSchool() {
		return school;
	}
	public String getSignature() {
		return signature;
	}
	public int getFriends() {
		return friends;
	}
	public int getFans() {
		return fans;
	}
	public int getType() {
		return type;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setUpsw(String upsw) {
		this.upsw = upsw;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public void setFriends(int friends) {
		this.friends = friends;
	}
	public void setFans(int fans) {
		this.fans = fans;
	}
	public void setType(int type) {
		this.type = type;
	}

	public User(String email, String upsw) {
		super();
		this.email = email;
		this.upsw = upsw;
	}
	/*
	 * 构造方法
	 */
	public User() {
		super();
	}
	
	
	
	

}
