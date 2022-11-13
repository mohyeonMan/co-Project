package product.service;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

public class UploadService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		 String fileName = request.getParameter("file");
         System.out.println(fileName);
         
         
         
         
		return "/uploadtest/uploadOk.jsp";
	}

	

}
