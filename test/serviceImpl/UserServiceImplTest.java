package serviceImpl;

import entity.User;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import service.UserService;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by lxq on 2017/6/29.
 */
public class UserServiceImplTest {
    private UserService userService;
    User user;
    @BeforeEach
    public void init(){
        userService = new UserServiceImpl();
        user = new User();
    }
    @Test
    public  void checkLogin() {
        user.setEmail("123456@qq.com");
        user.setUpsw("111111");
        boolean flag = userService.checkLogin(user);
        assertTrue(flag);

    }

    @Test
    public void register() {
      user.setUname("test");
      user.setEmail("123456@qq.com");
      user.setUpsw("111111");
      assertTrue(userService.register(user));
    }

    @Test
    public void updateUser() {

    }

    @Test
    void updateBasic() {

    }

    @Test
    void updateImage() {

    }

    @Test
    void updateUpsw() {

    }

    @Test
   public void selectByEmailAndUpsw() {
     assertNotNull(userService.selectByEmailAndUpsw("123456@qq.com","123456"));
    }

}