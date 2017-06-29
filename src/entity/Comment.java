package entity;

import java.util.Date;

public class Comment {
    private int commentId;
    private String commentText;
    private Date commentTime;
//    private int userId;
    private int forumId;
    private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getCommentId() {
		return commentId;
	}
	public String getCommentText() {
		return commentText;
	}
	public Date getCommentTime() {
		return commentTime;
	}
//	public int getUserId() {
//		return userId;
//	}
	public int getForumId() {
		return forumId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
//	public void setUserId(int userId) {
//		this.userId = userId;
//	}
	public void setForumId(int forumId) {
		this.forumId = forumId;
	}
    
}
