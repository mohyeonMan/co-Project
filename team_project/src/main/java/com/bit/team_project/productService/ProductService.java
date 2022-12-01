package com.bit.team_project.productService;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.PrdCommentDTO;
import com.bit.team_project.DTO.ProductDTO;
import com.bit.team_project.DTO.SoketDTO;

public interface ProductService {

	public void write(ProductDTO productDTO ,HttpSession session);

	public List<ProductDTO> getList();
	
	public ProductDTO getView(ModelMap modelMap);

	public ProductDTO getProductView(int product_seq);

	public void updateHit(Map<String, Integer> map);

	public List<ProductDTO> getIndexGrid();
	
	public List<ProductDTO> getProductSort(Map<String, String> map);

	public void saveNotify(SoketDTO soketDTO);

	public void commentSet(ModelMap modelMap);

	public List<PrdCommentDTO> getComment(ModelMap modelMap);
	
	public List<ProductDTO> getProductNew();

	public List<ProductDTO> getHighList();
	
	public List<SoketDTO> getMessageList(String id);


	public List<ProductDTO> getPopularList();
	
	public void setPrdStatus();

	public ProductDTO showGettingPrd();

	

}
