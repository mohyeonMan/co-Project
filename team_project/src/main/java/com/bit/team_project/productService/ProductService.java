package com.bit.team_project.productService;

import java.util.List;
import java.util.Map;

import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.ProductDTO;

public interface ProductService {

	public void write(ProductDTO productDTO);

	public List<ProductDTO> getList();
	
	public ProductDTO getView(ModelMap modelMap);

	public ProductDTO getProductView(int product_seq);

	public void updateHit(Map<String, Integer> map);

<<<<<<< HEAD
	public List<ProductDTO> getIndexGrid();
=======
	public List<ProductDTO> getProductSort(Map<String, String> map);

	
>>>>>>> 247abee333248d34ea660f7fb8ed1deac1f3123e

}
