package com.bit.team_project.productDAO;

import java.util.List;
import java.util.Map;

import com.bit.team_project.DTO.ProductDTO;

public interface ProductDAO {

	public void write(ProductDTO productDTO);

	public List<ProductDTO> getList();
	
	public ProductDTO getOne(Map<String, String>map);

	public ProductDTO getProductView(int product_seq);
	
	public void updateHit(Map<String, Integer> map);

	public List<ProductDTO> getIndexGrid();

	public List<ProductDTO> getProductSort(Map<String, String> map);

	

}
