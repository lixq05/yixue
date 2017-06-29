package service;

import entity.User;

public interface UserService {
  public boolean checkLogin(User user);//检查用户是否已经登录
  
  public boolean register(User user);//用户进行注册功能
  
  public boolean updateUser(User user);//用户资料的修改
  
  public boolean updateBasic(User user);
  
  public boolean updateImage(String image, int id);
  
  public boolean updateUpsw(int id, String upsw);
  
  public User selectByEmailAndUpsw(String email, String upsw);
}
