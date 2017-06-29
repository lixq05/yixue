package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CommentDao;
import daoImpl.CommentDaoImpl;
import entity.Comment;
import entity.User;

@SuppressWarnings("serial")
public class AddCommentServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddCommentServlet() {
		super();
	}

	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html,charset=UTF-8");
		doPost(request, response);
		
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
//       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		response.setContentType("text/html,charset=UTF-8");
		CommentDao commentDao = new CommentDaoImpl();
		User user = (User) request.getSession().getAttribute("user");
		HttpSession session = request.getSession();
		String commentText = request.getParameter("commentText");
		System.out.print(commentText);
		Comment comment = new Comment();
		comment.setCommentText(commentText);
		comment.setCommentTime(new Date());
		comment.setUser(user);
		request.setAttribute("comment", comment);
		if(commentDao.addComment(comment)){
			List<Comment> commentList = new ArrayList<Comment>();
			commentList  = commentDao.getAllComment();
			session.setAttribute("commentList", commentList);
			response.sendRedirect("main.jsp");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
