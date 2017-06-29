package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CommentDao;
import dao.ForumDao;
import daoImpl.CommentDaoImpl;
import daoImpl.ForumDaoImpl;
import service.ForumService;
import serviceImpl.ForumServiceImpl;
import entity.Comment;
import entity.Forum;
import entity.PageView;

public class PageServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PageServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html,charset=UTF-8");
		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
   
		response.setContentType("text/html,charset=UTF-8");
		HttpSession session = request.getSession();
		ForumService forumService = new ForumServiceImpl();
		CommentDao commentDao = new CommentDaoImpl();
//		List<Comment> commentList = new ArrayList<Comment>();
//		commentList = commentDao.getAllComment();
		String uri = "";
		try {
            //1. 获取“当前页”参数；  (第一次访问当前页为null) 
            String currPage = request.getParameter("currentPage");
            // 判断
            if (currPage == null || "".equals(currPage.trim())){
                currPage = "1";      // 第一次访问，设置当前页为1;
            }
            // 转换
            int currentPage = Integer.parseInt(currPage);
            
            //2. 创建PageView对象，设置当前页参数； 传入service方法参数
            PageView<Forum> pageBean = new PageView<Forum>();
            pageBean.setCurrentPage(currentPage);
            
            //3. 调用service  
            forumService.getAll(pageBean);    // 【pageBean已经被dao填充了数据】
            
            //4. 保存pageBean对象，到request域中
            session.setAttribute("pageBean", pageBean);
//            request.setAttribute("commentList", commentList);
            //5. 跳转 
             uri = "forum.jsp";
        } catch (Exception e) {
            e.printStackTrace();  // 测试使用
            // 出现错误，跳转到错误页面；给用户友好提示
            uri = "error.jsp";
        }
        request.getRequestDispatcher(uri).forward(request, response);
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
