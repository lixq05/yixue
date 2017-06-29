package dao;

import java.util.List;

import entity.User;

/*
 * 对用户的增删改查
 */
public interface UserDao {
  public List<User> getAllUser();
//  public List<User> getAllAdmin();
  public boolean findUserByEmailAndUpsw(String email, String upsw);
  public User findByEmailAndUpsw(String email, String upsw);
  public boolean addUser(User user);
  public boolean deleteUser(int id);
  public boolean updateUser(User user);
  public boolean updateSome(User user);
  public boolean insertImage(String image, int id);
  public User selectUserById(int id);
  public boolean alterUpsw(int id, String newUpsw);
  
}
