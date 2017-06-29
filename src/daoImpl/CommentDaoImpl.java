package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import util.DBUtil;
import dao.CommentDao;
import dao.UserDao;
import entity.Comment;

public class CommentDaoImpl implements CommentDao {

	@Override
	public List getAllComment() {
		List<Comment> list = new ArrayList<Comment>();
		UserDao userDao = new UserDaoImpl();
		Connection conn = DBUtil.getConn();
		String sql = "select * from comment order by commentTime desc";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Comment comment = new Comment();
				comment.setCommentId(rs.getInt("commentId"));
				comment.setCommentText(rs.getString("commentText"));
				comment.setCommentTime(rs.getDate("commentTime"));
//				comment.setUserId(rs.getInt("userId"));
				comment.setForumId(rs.getInt("forumId"));
				comment.setUser(userDao.selectUserById(rs.getInt("userId")));
				list.add(comment);
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean addComment(Comment comment) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Connection conn = DBUtil.getConn();
		String sql = "insert into comment(commentText,commentTime,userId) values(?,?,?)";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,comment.getCommentText());
			ps.setString(2, df.format(new Date()));
     		ps.setInt(3,comment.getUser().getId());
//			ps.setInt(4, comment.getForumId());
			int count = ps.executeUpdate();
			return count>0?true:false;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return false;
	}

}
