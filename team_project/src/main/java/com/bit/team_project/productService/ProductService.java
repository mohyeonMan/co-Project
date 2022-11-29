package com.bit.team_project.productService;

import java.util.List;
import java.util.Map;

import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.ProductDTO;
import com.bit.team_project.DTO.SoketDTO;

public interface ProductService {

	public void write(ProductDTO productDTO);

	public List<ProductDTO> getList();
	
	public ProductDTO getView(ModelMap modelMap);

	public ProductDTO getProductView(int product_seq);

	public void updateHit(Map<String, Integer> map);

	public List<ProductDTO> getIndexGrid();
	public List<ProductDTO> getProductSort(Map<String, String> map);

	public void test();
	public void gomsg();

	public void saveNotify(SoketDTO soketDTO);

	public List<ProductDTO> getProductNew();

	

}
