package product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.control.CommandProcess;

import product.bean.ProductDTO;
import product.dao.ProductDAO;

public class GetProductView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int product_seq  = Integer.parseInt(request.getParameter("product_seq"));
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductDTO productDTO = productDAO.getView(product_seq);
		
		JSONObject json = new JSONObject();
		json.put("subject",productDTO.getSubject());
		json.put("category",productDTO.getCategory());
		json.put("content",productDTO.getContent());
		json.put("hopeprice",productDTO.getHopeprice());
		json.put("startprice",productDTO.getStartprice());
		json.put("unitprice",productDTO.getUnitprice());
		json.put("trade_way",productDTO.getTrade_way());
		json.put("enddays_year",productDTO.getEnddays_year());
		json.put("enddays_month",productDTO.getEnddays_month());
		json.put("enddays_day",productDTO.getEnddays_day());
		json.put("enddays_hour",productDTO.getEnddays_hour());
		json.put("enddays_min",productDTO.getEnddays_min());
		json.put("id",productDTO.getId());
		json.put("product_seq",productDTO.getProduct_seq());
		
		request.setAttribute("json", json);
		
		return "/detailedPage/getProductView.jsp";
	}

}
