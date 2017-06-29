package dao;

import java.util.List;

import entity.Comment;

public interface CommentDao {
  public List getAllComment();
  
  public boolean addComment(Comment comment);
}
