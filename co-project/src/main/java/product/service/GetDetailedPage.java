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
		
		
		
		String subject = request.getParameter("subject");
		String category = request.getParameter("category");
		String content = request.getParameter("content");
		int hopePrice  = Integer.parseInt(request.getParameter("hopeprice"));
		int startPrice  = Integer.parseInt(request.getParameter("startprice"));
		int unitPrice  = Integer.parseInt(request.getParameter("unitprice"));
		int trade_way  = Integer.parseInt(request.getParameter("trade_way"));
		int enddays_year  = Integer.parseInt(request.getParameter("enddays_year"));
		int enddays_month  = Integer.parseInt(request.getParameter("enddays_month"));
		int enddays_day  = Integer.parseInt(request.getParameter("enddays_day"));
		int enddays_hour  = Integer.parseInt(request.getParameter("enddays_hour"));
		int enddays_min  = Integer.parseInt(request.getParameter("enddays_min"));
		String id = "hong";
		
		
		
		
		
//		
//		ProductDTO productDTO = new ProductDTO();
//		productDTO.setSubject(subject);
//		productDTO.setCategory(category);
//		productDTO.setContent(content);
//		productDTO.setHopeprice(hopePrice);
//		productDTO.setStartprice(startPrice);
//		productDTO.setUnitprice(unitPrice);
//		productDTO.setTrade_way(trade_way);
//		productDTO.setEnddays_year(enddays_year);
//		productDTO.setEnddays_month(enddays_month);
//		productDTO.setEnddays_day(enddays_day);
//		productDTO.setEnddays_hour(enddays_hour);
//		productDTO.setEnddays_min(enddays_min);
//		productDTO.setId(id);
//		
//		
//		
//		
//		ProductDAO productDAO = ProductDAO.getInstance();
//		productDAO.productWrite(productDTO);
		
		
		
		
		
		return "/detailedPage/getDetailedPage.jsp";
	}

}
