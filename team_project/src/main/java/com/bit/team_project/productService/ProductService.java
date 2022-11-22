package com.bit.team_project.productService;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.bit.team_project.DTO.ProductDTO;

public interface ProductService {

	public void write(ProductDTO productDTO);

	public List<ProductDTO> getList();
	
	public ProductDTO getView(ModelMap modelMap);

	public ProductDTO getProductView(int product_seq);

}
