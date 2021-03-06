package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EncodingFilter implements Filter{
	private String encode = null;
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		 HttpServletRequest request = (HttpServletRequest)arg0;
		 HttpServletResponse response = (HttpServletResponse)arg1;
		 if(this.encode != null && !this.encode.equals("")){
			   request.setCharacterEncoding(this.encode);
			   response.setContentType("text/html;charset="+encode);
			   
			  }else{
			   request.setCharacterEncoding("UTF-8");
			   response.setContentType("text/html;charset=UTF-8");
			  }
		 arg2.doFilter(request, response); 
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
