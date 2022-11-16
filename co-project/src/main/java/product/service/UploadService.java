package product.service;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UploadService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String nada = request.getParameter("nada");
		System.out.println(nada);
		
		String path = "/Users/leeyongshik/git/co-Project/co-project/src/main/webapp/uploadFiles";
	    int size = 1024 * 1024 * 20; //20MB
	    String str, filename, original_filename;
	    try{
	    	MultipartRequest multiRequest = new MultipartRequest(request, path, size, "EUC-KR", new DefaultFileRenamePolicy());
	    	
	    	Enumeration files = multiRequest.getFileNames();
	    	str = (String)files.nextElement();
	    	filename = multiRequest.getFilesystemName(str);
	    	original_filename = multiRequest.getOriginalFileName(str);
	    	
	    	System.out.println("str : "+str);
	    	System.out.println("filename : "+filename);
	    	System.out.println("original_filename : "+original_filename);
	    	System.out.println(path+"/"+filename);
	    } catch (Exception e){
	    	e.printStackTrace();
	    }
	    
         
         
         
         
		return "/uploadtest/uploadOk.jsp";
	}

	

}
