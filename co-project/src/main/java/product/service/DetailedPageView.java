package product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.control.CommandProcess;

import product.bean.ProductDTO;
import product.dao.ProductDAO;

public class DetailedPageView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int product_seq = Integer.parseInt(request.getParameter("product_seq"));
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductDTO productDTO = productDAO.getView(product_seq);
		
		
		request.setAttribute("subject",productDTO.getSubject());
		request.setAttribute("category",productDTO.getCategory());
		request.setAttribute("content",productDTO.getContent());
		request.setAttribute("hopeprice",productDTO.getHopeprice());
		request.setAttribute("startprice",productDTO.getStartprice());
		request.setAttribute("unitprice",productDTO.getUnitprice());
		request.setAttribute("trade_way",productDTO.getTrade_way());
		request.setAttribute("enddays_year",productDTO.getEnddays_year());
		request.setAttribute("enddays_month",productDTO.getEnddays_month());
		request.setAttribute("enddays_day",productDTO.getEnddays_day());
		request.setAttribute("enddays_hour",productDTO.getEnddays_hour());
		request.setAttribute("enddays_min",productDTO.getEnddays_min());
		request.setAttribute("id",productDTO.getId());
		
		
		
		
		request.setAttribute("product_seq", product_seq);
		return "/detailedPage/detailedPage_2.jsp";
	}

}
