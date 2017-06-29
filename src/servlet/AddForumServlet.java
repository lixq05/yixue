package servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.ForumDao;
import daoImpl.ForumDaoImpl;
import entity.Forum;
import entity.PageView;
import entity.User;
import service.ForumService;
import serviceImpl.ForumServiceImpl;

public class AddForumServlet extends HttpServlet {

	public AddForumServlet() {
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

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html,charset=UTF-8");
		ForumService forumService = new ForumServiceImpl();
		PageView<Forum> pageBean = new PageView<Forum>();
//		int  currentPage = Integer.parseInt(request.getParameter("currentPage"));
        pageBean.setCurrentPage(1);
		HttpSession session = request.getSession();
//		ForumService forumService = new ForumServiceImpl();
		if(upload(request, response)){
		  forumService.getAll(pageBean);
		  session.setAttribute("pageBean", pageBean);
		  response.sendRedirect("forum.jsp");
		}else{
			System.out.print("出错了");
		}
	}
	public boolean upload(HttpServletRequest request, HttpServletResponse response) {
		ForumDao forumDao = new ForumDaoImpl();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		boolean flag = false;
		User user = (User) request.getSession().getAttribute("user");
		try{
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		}catch(Exception e){
			e.printStackTrace();
		}
		String choose = null;
		String title = null;
		String content = null;
		Date time = null;
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			 String savePath = request.getSession().getServletContext().getRealPath("/") + "upload/";
			 String path = "/yixue/upload/";
			 DiskFileItemFactory factory = new DiskFileItemFactory();
			 factory.setSizeThreshold(1024 * 4);
			 ServletFileUpload uploader = new ServletFileUpload(factory);
			 uploader.setSizeMax(4 * 1024 * 1024);
			 factory.setRepository(new File(request.getRealPath("/")  
		                + "upload"));
			 try {
				 List<FileItem> fileItems = uploader.parseRequest(request);
				 String fileName = "";
				 for (FileItem item : fileItems) {
					 if (item.isFormField()) {
						 if ("choose".equals(item.getFieldName())) {
							 choose = item.getString("UTF-8");
							 System.out.println(choose);
						  }else if ("title".equals(item.getFieldName())) {
	                            title = item.getString("UTF-8");
	                            System.out.println(title);
	                        } else if("content".equals(item.getFieldName())){
	                            content = item.getString("UTF-8");
	                            System.out.println(content);
	                        }else{	                      
	               
	                        	String s = item.getString("UTF-8");
	                        	System.out.println(s);
	                        }
						 }else{
							 fileName = item.getName();
							 String pictures_url = null;
    						 File file = new File(savePath + "/");
							 if (!file.exists()) {
		                            file.mkdirs();
		                        }
							 String wirteFile_url = savePath  + "/" + fileName; 
							 File wirteFile = new File(wirteFile_url); 
							 item.write(wirteFile);
							 String picture_url = path + "/" + fileName;
							 pictures_url += picture_url;
							 pictures_url += ";"; 
						 }
					 }
				 
				  Forum forum = new Forum();
				  forum.setChoose(choose);
				  forum.setTitle(title);
				  forum.setContent(content);
				  forum.setUser(user);
				  forum.setTime(new Date());
				  forum.setPic(fileName);
				  flag = forumDao.addForum(forum);
				 }catch(FileUploadException e){
					 e.printStackTrace();
				 }catch(Exception e){
					 e.printStackTrace();
				 }
			 }
	   return flag;
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
