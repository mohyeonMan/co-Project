package product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.control.CommandProcess;
import product.bean.ProductDTO;
import product.dao.ProductDAO;

public class GetProductList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		ProductDAO productDAO = ProductDAO.getInstance();
		List<ProductDTO> list = productDAO.getList();
		
		//List -> JSON 변환
		JSONObject json = new JSONObject();
		
		if(list != null) {
			JSONArray array = new JSONArray();
			for (ProductDTO productDTO : list) {
				JSONObject temp = new JSONObject();
				temp.put("subject",productDTO.getSubject());
				temp.put("category",productDTO.getCategory());
				temp.put("content",productDTO.getContent());
				temp.put("hopeprice",productDTO.getHopeprice());
				temp.put("startprice",productDTO.getStartprice());
				temp.put("unitprice",productDTO.getUnitprice());
				temp.put("trade_way",productDTO.getTrade_way());
				temp.put("enddays_year",productDTO.getEnddays_year());
				temp.put("enddays_month",productDTO.getEnddays_month());
				temp.put("enddays_day",productDTO.getEnddays_day());
				temp.put("enddays_hour",productDTO.getEnddays_hour());
				temp.put("enddays_min",productDTO.getEnddays_min());
				temp.put("id",productDTO.getId());
				temp.put("product_seq",productDTO.getProduct_seq());
				
				array.add(temp);
			}
			json.put("list", array);
		}
		
		request.setAttribute("json", json);
		return "/detailedPage/getProductList.jsp";
	}

}
