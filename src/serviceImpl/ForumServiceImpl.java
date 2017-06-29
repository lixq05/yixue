package serviceImpl;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.ForumDao;
import daoImpl.ForumDaoImpl;
import entity.Forum;
import entity.PageView;
import service.ForumService;

public class ForumServiceImpl implements ForumService{
	ForumDao forumDao = new ForumDaoImpl();
	@Override
	public List<Forum> getAllForum() {
		// TODO Auto-generated method stub
		return forumDao.getAllForum();
	}
	@Override
	public void getAll(PageView<Forum> pv) {
		int totalCount = this.getTotalCount();
        pv.setTotalCount(totalCount);
        if (pv.getCurrentPage() <=0) {
            pv.setCurrentPage(1);                        // 把当前页设置为1
           } else if (pv.getCurrentPage() > pv.getTotalPage()){
              pv.setCurrentPage(pv.getTotalPage());        // 把当前页设置为最大页数
        	      }
        int currentPage = pv.getCurrentPage();
        int index = (currentPage -1 ) * pv.getPageCount();
        int count = pv.getPageCount();
        List<Forum> pageData = forumDao.getPageDate(index, count);
        //分页查询，将查询到的数据设置到对象中
        pv.setPageData(pageData);
	}
	private int getTotalCount() {
		// TODO Auto-generated method stub
		return forumDao.getTotalCount();
	}
	
//	public List<Forum> getAll(int curr) throws Exception {
//	   return forumDao.getReslutList(curr);
//}
	
}

