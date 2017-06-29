package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UserService;
import serviceImpl.UserServiceImpl;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import entity.User;

public class UpdateServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
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

		 response.setContentType("text/html,charset=UTF-8");
		 HttpSession session = request.getSession();
		 User user = (User) request.getSession().getAttribute("user");
         UserService userService = new UserServiceImpl();
         String deal = request.getParameter("deal");
         if("basicInfo".equalsIgnoreCase(deal)){
             String email = request.getParameter("email");
             String username = request.getParameter("username");
             String sex = request.getParameter("sex");
             System.out.print(sex);
             String school = request.getParameter("school");
             String signature = request.getParameter("signature");
             String hobby="";
             String[] item = request.getParameterValues("hobby");
             for (int i = 0; i < item.length; i++) {
                  hobby = hobby + item[i];
            	           // 得到每个元素
            	        if (i != (item.length - 1)) {
            	                 hobby += ",";
            	               // 如果不为最后一个元素，将其尾部加一个‘,’隔开
                          }
            	        System.out.print(hobby);
            	       }
         	  
         
           user.setEmail(email);
           user.setUsername(username);;
           user.setSex(sex);
           user.setSchool(school);
           user.setSignature(signature);
           user.setHobby(hobby);
          try {
 			userService.updateBasic(user);
			session.setAttribute("user", user);
 		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         request.getRequestDispatcher("index.jsp").forward(request, response);
       }
      if ("img".equalsIgnoreCase(deal)) {
    	   ServletConfig config = getServletConfig();
            // 新建一个SmartUpload对象
   		   SmartUpload su = new SmartUpload();
   		   // 上传初始化
   		   su.initialize(config,request,response);
   		
   	       su.setMaxFileSize(2000*2000);  	
   		
   		   su.setAllowedFilesList("jpg,txt,png");
   		
   		// su.setDeniedFilesList("exe,bat,jsp,htm,html,,");
   		// 上传文件
   		try {
   			su.upload();
   			int count = su.save("/upload");
   			
     		String fileName = su.getFiles().getFile(0).getFileName();//文件名
    		String fileExt = su.getFiles().getFile(0).getFileExt();//文件扩展名
   			String filePathName = su.getFiles().getFile(0).getFilePathName();//文件全名
    		com.jspsmart.upload.File file = su.getFiles().getFile(0);
   			int id = user.getId();
   			user.setImage(filePathName);
   		    userService.updateImage(filePathName, id);
   			session.setAttribute("user", user);
    		session.setAttribute("fileName", filePathName);
   			//file.saveAs("/upload/" + filePathName);
   			//String root = request.getSession().getServletContext().getRealPath("/");
   			System.out.println(user);
   			System.out.println(id);
   		} catch (SmartUploadException e) {
   			// TODO Auto-generated catch block
   			e.printStackTrace();
   		}
   		request.getRequestDispatcher("index.jsp").forward(request, response);
       }
         
       else if("password".equalsIgnoreCase(deal))  {
    	  String oldUpsw = request.getParameter("oldUpsw");
    	  String newUpsw = request.getParameter("newUpsw");
    	  String realUpsw = user.getUpsw();
    	  int id = user.getId();
    	  userService.updateUpsw(id, newUpsw);
    	  request.getRequestDispatcher("index.jsp").forward(request, response);
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
