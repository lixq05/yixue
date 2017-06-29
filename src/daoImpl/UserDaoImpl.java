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
import dao.UserDao;
import entity.User;

public class UserDaoImpl implements UserDao {

	@Override
	public List<User> getAllUser() {
		
		List<User> list = new ArrayList<User>();
		Connection conn = DBUtil.getConn();
		String sql = "select * from user";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setUname(rs.getString("uname"));
				user.setUpsw(rs.getString("upsw"));
				user.setImage(rs.getString("image"));
				user.setSchool(rs.getString("school"));
				user.setSignature(rs.getString("signature"));
				user.setFriends(rs.getInt("friends"));
				user.setFans(rs.getInt("fans"));
				user.setType(rs.getInt("type"));
				user.setSex(rs.getString("sex"));
				user.setTime(rs.getDate("time"));
				user.setHobby(rs.getString("hobby"));
				list.add(user);
			}
			rs.close();
			ps.close();
//			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean addUser(User user) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Connection conn = DBUtil.getConn();
		String sql = "INSERT INTO user(username,upsw,email,time) VALUES (?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getUpsw());
			ps.setString(3, user.getEmail());
			ps.setString(4, df.format(new Date()));
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
	public boolean deleteUser(int id) {
		Connection conn = DBUtil.getConn();
		String sql = "delete from user where id = ?";
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
	public boolean updateUser(User user) {
	  Connection conn = DBUtil.getConn();
	  String sql = "UPDATE user SET 'email'=?,'username'=?,'sex'=?,'school'=?,'signature'=?,'image'=?,'upsw'=? ,'hobby'=? WHERE 'id' = ?";
	  try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, user.getEmail());
		ps.setString(2, user.getUsername());
		ps.setString(3, user.getSex());
		ps.setString(4, user.getSchool());
		ps.setString(5, user.getSignature());
		ps.setString(6, user.getImage());
		ps.setString(7, user.getUpsw());
		ps.setString(8, user.getHobby());
		ps.setInt(8, user.getId());
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
	public User selectUserById(int id) {
		Connection conn = DBUtil.getConn();
		String sql = "select * from user where id = "+id;
		User user = null;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setUname(rs.getString("uname"));
				user.setUpsw(rs.getString("upsw"));
				user.setImage(rs.getString("image"));
				user.setSchool(rs.getString("school"));
				user.setSignature(rs.getString("signature"));
				user.setFriends(rs.getInt("friends"));
				user.setFans(rs.getInt("fans"));
				user.setType(rs.getInt("type"));
				user.setSex(rs.getString("sex"));
				user.setTime(rs.getDate("time"));
				user.setHobby(rs.getString("hobby"));
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public boolean findUserByEmailAndUpsw(String email,String upsw) {
        User user = new User();
		Connection conn = DBUtil.getConn();
		boolean flag = false;
		String sql = "select * from user where email=? and upsw=?";
		 try{
		      PreparedStatement ps = conn.prepareStatement(sql);
		      ps.setString(1, email);
		      ps.setString(2, upsw);
		  
		      ResultSet rs = (ResultSet) ps.executeQuery();
		       if (rs.next())
		          {
			        flag = true;
			        rs.close();
			        ps.close();
			    	conn.close();
			   }
			   else
			   {
			    flag = false ;
			    rs.close();
		        ps.close();
		    	conn.close();
			   }
			
	       }catch(SQLException e){
	          e.printStackTrace();	
	        }
	
     return flag;
		
	}

	@Override
	public boolean updateSome(User user) {
		  Connection conn = DBUtil.getConn();
		  String sql = "UPDATE user SET 'email'=?,'username'=?,'sex'=?,'school'=?,'signature'=?,'hobby'=? WHERE 'id' = ?";
		  try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getSchool());
			ps.setString(5, user.getSignature());
//			ps.setString(6, user.getImage());
//			ps.setString(6, user.getUpsw());
			ps.setString(6, user.getHobby());
			ps.setInt(7, user.getId());
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
	public boolean insertImage(String image, int id) {
		Connection conn = DBUtil.getConn();
		String sql = "update user set image =? where id = "+id;;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, image);
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
	public boolean alterUpsw(int id,String newUpsw) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConn();
		String sql = "update user set upsw = ? where id = "+id;
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, newUpsw);
			int count = ps.executeUpdate();
			return count>0?true:false;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public User findByEmailAndUpsw(String email,String upsw) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConn();
		String sql = "select * from user where email= ? and upsw = ?";
		User user = null;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, upsw);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setUname(rs.getString("uname"));
				user.setUpsw(rs.getString("upsw"));
				user.setImage(rs.getString("image"));
				user.setSchool(rs.getString("school"));
				user.setSignature(rs.getString("signature"));
				user.setFriends(rs.getInt("friends"));
				user.setFans(rs.getInt("fans"));
				user.setType(rs.getInt("type"));
				user.setSex(rs.getString("sex"));
				user.setTime(rs.getDate("time"));
				user.setHobby(rs.getString("hobby"));
			}
			rs.close();
			ps.close();
		}catch(Exception e){
				e.printStackTrace();
			}
		return user;
	}

}
