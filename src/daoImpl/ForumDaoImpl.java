package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import util.DBUtil;
import dao.ForumDao;
import dao.UserDao;
import entity.Forum;
import entity.PageView;
import entity.User;

public class ForumDaoImpl implements ForumDao {

	@Override
	public List<Forum> getAllForum() {
		List<Forum> list = new ArrayList<Forum>();
		Connection conn = DBUtil.getConn();
		UserDao userDao = new UserDaoImpl();
		String sql = "select * from forum as p order by p.time desc ";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Forum forum = new Forum();
				forum.setId(rs.getInt("id"));
				forum.setChoose(rs.getString("choose"));
				forum.setTitle(rs.getString("title"));
				forum.setTime(rs.getDate("time"));
				forum.setContent(rs.getString("content"));
				forum.setPic(rs.getString("pic"));
//				forum.setUid(rs.getInt("uid"));
				forum.setView(rs.getInt("view"));
				forum.setUser(userDao.selectUserById(rs.getInt("uid")));
				list.add(forum);
			  }
			}catch(SQLException e){
				e.printStackTrace();
			}
		return list;
		}
	

	@Override
	public boolean addForum(Forum forum) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Connection conn = DBUtil.getConn();
		String sql = "INSERT INTO forum(choose,title,time,content,pic,uid) VALUES (?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, forum.getChoose());
			ps.setString(2, forum.getTitle());
			ps.setString(3, df.format(new Date()));
			ps.setString(4, forum.getContent());
			ps.setString(5, forum.getPic());
			ps.setInt(6, forum.getUser().getId());
			int count = ps.executeUpdate();
			ps.close();
			return count>0?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteForum(int id) {
		Connection conn = DBUtil.getConn();
		String sql = "delete from forum where id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int count = ps.executeUpdate();
			ps.close();
			return count>0?true:false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateForum(String content) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List getForumByUserId(int uid) {
		List<Forum> list = new ArrayList<Forum>();
		Connection conn = DBUtil.getConn();
		String sql = "select * from forum where uid = "+uid;
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Forum forum = new Forum();
				forum.setId(rs.getInt("id"));
				forum.setChoose(rs.getString("choose"));
				forum.setContent(rs.getString("content"));
				forum.setTime(rs.getDate("time"));
				forum.setPic(rs.getString("pic"));
				forum.setView(rs.getInt("view"));
				list.add(forum);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		int count = 0;
		Connection conn = DBUtil.getConn();
		String sql = "select count(*) from forum";
		try{
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				count = rs.getInt(1);
				return count;
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
		return count;
	}


	@Override
	public List<Forum> getPageDate(int index,int pageCount) {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		List<Forum> list = new ArrayList<Forum>();
		
		Connection conn = DBUtil.getConn();
		String sql="select * from forum  order by time desc limit ?,? ";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, index);
			ps.setInt(2, pageCount);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Forum forum = new Forum();
				forum.setId(rs.getInt("id"));
				forum.setChoose(rs.getString("choose"));
				forum.setTitle(rs.getString("title"));
				forum.setTime(rs.getDate("time"));
				forum.setContent(rs.getString("content"));
				forum.setPic(rs.getString("pic"));
//				forum.setUid(rs.getInt("uid"));
				forum.setView(rs.getInt("view"));
				forum.setUser(userDao.selectUserById(rs.getInt("uid")));
				list.add(forum);
			   }
			}catch(SQLException e){
				e.printStackTrace();
			}
			return list;
		
	}


	@Override
	public User UserAndForum(int uid) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConn();
		User user = new User();
		String sql = "select u.username,u.image from user as u ,forum as f where u.id="+uid;
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				
				user.setUsername(rs.getString("username"));
			
				user.setImage(rs.getString("image"));
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
		
		return user;
	}
		
	


//	@Override
//	public int totalForum() {
//		// TODO Auto-generated method stub
//		Connection conn = DBUtil.getConn();
//		String sql = "select count(*) from forum";
//		try{
//			PreparedStatement ps = conn.prepareStatement(sql);
//			ResultSet rs = ps.executeQuery();
//			if(rs.next()){
//				return rs.getInt(1);
//			}
//		}catch(SQLException e){
//			e.printStackTrace();
//			
//		}
//		return 0;
//	}


//	@SuppressWarnings("unchecked")
//	@Override
//	public List<Forum> getReslutList(int currentPage) throws Exception {
//		try { 
//			PageView<Forum> pv = new PageView<Forum>();
//            List<Forum> list = new ArrayList<Forum>();  
//            System.out.println("currentPage=="+currentPage);  
//            
//            Connection conn=DBUtil.getConn();   
//            Statement stmt = conn.createStatement();  
//            String strSql = "select * from forum limit "+currentPage * pv.getPageCount();//改成你的表  
//            System.out.println("pageNum * pageBean.rowsPerPage=="+currentPage * pv.getPageCount());  
//            
//            
//            ResultSet rset = stmt.executeQuery(strSql);  
//            boolean flag = rset.absolute((currentPage-1)*pv.getPageCount()+1); //把结果集指针调整到当前页应该显示的记录的开始.  
//            int i = 0;  
//            while (rset.next()) {  
//                    //这里要和表的字段对应起来！！！！  
//                    Forum forum=new Forum();
//                    forum.setId(rset.getInt("id"));
//                    forum.setChoose(rset.getString("choose"));
//                    forum.setTitle(rset.getString("title"));
//                    forum.setTime(rset.getDate("time"));
//                    forum.setPic(rset.getString("pic"));
//                    
//                    list.add(forum);  
//                i++;  
//            }  
//            System.out.println("i=="+i);  
//            rset.close();
//            stmt.close();
//            conn.close();
//            pv.setCurrentPage(currentPage);  
//            pv.setPageData(list);  
//            return list;  
//        } catch (Exception e) {  
//            e.printStackTrace();  
//            System.out.println("PageBean显示本页数据逻辑erro");  
//            throw e;  
//  
//        }   
//	}

}
