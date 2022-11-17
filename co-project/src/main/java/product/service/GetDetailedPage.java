package product.service;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import product.bean.ProductDTO;
import product.dao.ProductDAO;

public class GetDetailedPage implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		String path = "/Users/leeyongshik/git/co-Project/co-project/src/main/webapp/uploadFiles";
	    int size = 1024 * 1024 * 20; //20MB
	    String str, filename, original_filename;
	    try{
	    	MultipartRequest multiRequest = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
	    	
	    	
	    	String subject = multiRequest.getParameter("subject");
	    	String category = multiRequest.getParameter("category");
	    	String content = multiRequest.getParameter("content");
	    	int hopePrice  = Integer.parseInt(multiRequest.getParameter("hopeprice"));
	    	int startPrice  = Integer.parseInt(multiRequest.getParameter("startprice"));
	    	int unitPrice  = Integer.parseInt(multiRequest.getParameter("unitprice"));
	    	int trade_way  = Integer.parseInt(multiRequest.getParameter("trade_way"));
	    	int enddays_year  = Integer.parseInt(multiRequest.getParameter("enddays_year"));
	    	int enddays_month  = Integer.parseInt(multiRequest.getParameter("enddays_month"));
	    	int enddays_day  = Integer.parseInt(multiRequest.getParameter("enddays_day"));
	    	int enddays_hour  = Integer.parseInt(multiRequest.getParameter("enddays_hour"));
	    	int enddays_min  = Integer.parseInt(multiRequest.getParameter("enddays_min"));
	    	String id = "hong";
	    	
	    	System.out.println(subject);
	    	System.out.println(category);
	    	Enumeration files = multiRequest.getFileNames();
	    	str = (String)files.nextElement();
	    	filename = multiRequest.getFilesystemName(str);
	    	original_filename = multiRequest.getOriginalFileName(str);
	    	
	    	System.out.println("str : "+str);
	    	System.out.println("filename : "+filename);
	    	System.out.println("original_filename : "+original_filename);
	    	System.out.println(path+"/"+filename);
	    	
	    	
	    	ProductDTO productDTO = new ProductDTO();
	    	productDTO.setSubject(subject);
	    	productDTO.setCategory(category);
	    	productDTO.setContent(content);
	    	productDTO.setHopeprice(hopePrice);
	    	productDTO.setStartprice(startPrice);
	    	productDTO.setUnitprice(unitPrice);
	    	productDTO.setTrade_way(trade_way);
	    	productDTO.setEnddays_year(enddays_year);
	    	productDTO.setEnddays_month(enddays_month);
	    	productDTO.setEnddays_day(enddays_day);
	    	productDTO.setEnddays_hour(enddays_hour);
	    	productDTO.setEnddays_min(enddays_min);
	    	productDTO.setId(id);
	    	
	    	
	    	
	    	ProductDAO productDAO = ProductDAO.getInstance();
	    	productDAO.productWrite(productDTO);
	    	
	    	
	    } catch (Exception e){
	    	e.printStackTrace();
	    }
	    
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return "/detailedPage/getDetailedPage.jsp";
	}

}
