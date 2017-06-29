package serviceImpl;

import dao.UserDao;
import daoImpl.UserDaoImpl;
import entity.User;
import service.UserService;

public class UserServiceImpl implements UserService{
   UserDao userDao = new UserDaoImpl();
   
   
	@Override
	public boolean checkLogin(User user) {
		String email = user.getEmail();
		String upsw = user.getUpsw();
		return userDao.findUserByEmailAndUpsw(email,upsw);
		
	}

	@Override
	public boolean register(User user) {
		
		return userDao.addUser(user);
	}

	
	@Override
	public boolean updateUser(User user) {
		
		return userDao.updateUser(user);
	}

	@Override
	public boolean updateBasic(User user) {
		// TODO Auto-generated method stub
		return userDao.updateSome(user);
	}

	@Override
	public boolean updateImage(String image, int id) {
		// TODO Auto-generated method stub
		return userDao.insertImage(image, id);
	}

	@Override
	public boolean updateUpsw(int id, String upsw) {
		// TODO Auto-generated method stub
		return userDao.alterUpsw(id, upsw);
	}

	@Override
	public User selectByEmailAndUpsw(String email,String upsw) {
		// TODO Auto-generated method stub
		return userDao.findByEmailAndUpsw(email,upsw);
	}

}
