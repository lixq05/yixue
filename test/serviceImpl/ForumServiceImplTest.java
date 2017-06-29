package serviceImpl;

import entity.Forum;
import entity.PageView;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import service.ForumService;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by lxq on 2017/6/29.
 */
class ForumServiceImplTest {
   private ForumService forumService;
   @BeforeEach
  public void create(){
       forumService = new ForumServiceImpl();
   }

    @Test
  public void getAllForum() {
    List<Forum> forumList = new ArrayList<Forum>();
    forumList = forumService.getAllForum();
    boolean flag = false;
    if(forumList.size()>0){
        flag = true;
    }
    assertTrue(flag);
    }

    @Test
   public void getAll() {
    }

}