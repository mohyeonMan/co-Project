package com.bit.team_project.productService;

import java.util.List;

import com.bit.team_project.DTO.ProductDTO;

public interface ProductService {

	public void write(ProductDTO productDTO);

	public List<ProductDTO> getList();

}
