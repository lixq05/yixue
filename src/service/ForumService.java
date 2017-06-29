package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Forum;
import entity.PageView;

public interface ForumService {
	
	public List<Forum> getAllForum();
	
	//将pageView填充数据
	public void getAll(PageView<Forum> pv);
	
}
