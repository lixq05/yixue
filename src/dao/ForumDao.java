package dao;

import java.util.List;

import entity.Forum;
import entity.PageView;
import entity.User;

public interface ForumDao {
   public List<Forum> getAllForum();
   
   public boolean addForum(Forum forum);
   
   public boolean deleteForum(int id);
   
   public boolean updateForum(String content);//对用户发表内容进行限制
   
   public List getForumByUserId(int id); //找到用户发表的论坛内容
   
   public User UserAndForum(int uid);
   
   //得到总记录数
   public int getTotalCount();
   //分页查询
   public List<Forum> getPageDate(int index, int pageCount);
}
