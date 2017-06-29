package entity;

import java.util.Date;

public class Forum {
  private int id;
  private String choose;
  private String title;
  private Date time;
  private String content;
  private String pic;
//  private int uid;
  private int view;
  private User user;
 
  public Forum(){
	  super();
  }
//public Forum(int id, String choose, String title, Date time, String pic,
//		int uid, int view) {
//	super();
//	this.id = id;
//	this.choose = choose;
//	this.title = title;
//	this.time = time;
//	this.pic = pic;
//	this.uid = uid;
//	this.view = view;
//}
public int getId() {
	return id;
}
public String getChoose() {
	return choose;
}
public String getTitle() {
	return title;
}
public Date getTime() {
	return time;
}
public String getContent() {
	return content;
}
public String getPic() {
	return pic;
}
//public int getUid() {
//	return uid;
//}
public int getView() {
	return view;
}
public User getUser() {
	return user;
}
public void setId(int id) {
	this.id = id;
}
public void setChoose(String choose) {
	this.choose = choose;
}
public void setTitle(String title) {
	this.title = title;
}
public void setTime(Date time) {
	this.time = time;
}
public void setContent(String content) {
	this.content = content;
}
public void setPic(String pic) {
	this.pic = pic;
}
//public void setUid(int uid) {
//	this.uid = uid;
//}
public void setView(int view) {
	this.view = view;
}
public void setUser(User user) {
	this.user = user;
}
}
