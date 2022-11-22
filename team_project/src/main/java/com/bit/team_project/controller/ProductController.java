package com.bit.team_project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.DTO.ProductDTO;
import com.bit.team_project.productService.ProductService;

@Component
@RequestMapping(value = "product")
public class ProductController {
	@Autowired
	private ProductService productService;

	@GetMapping(value = "/productWriteForm")
	public String productWriteForm() {
		return "/product/productWriteForm";
	}
	
	@PostMapping(value = "/write")
	public String write(@ModelAttribute ProductDTO productDTO) {
		productService.write(productDTO);
		return "/product/write";
	}
	
	@RequestMapping(value = "/productList")
	public String productList() {
		return "/product/productList";
	}
	
	@PostMapping(value = "/getProductList")
	@ResponseBody
	public List<ProductDTO> getProductList(){
		return productService.getList();
	}
	@ResponseBody
	@PostMapping(value = "getView")
	public ProductDTO getView(@RequestParam Map<String, String>map, ModelMap modelMap) {
		modelMap.put("product_seq",map.get("product_seq"));
		return productService.getView(modelMap);
	}
	
	@RequestMapping(value = "/productView")
	public String productView(@RequestParam int product_seq) {
		return "/product/productView";
	}
	
	@PostMapping(value = "/getProductView")
	@ResponseBody
	public ProductDTO getProductView(@RequestParam int product_seq) {
		return productService.getProductView(product_seq);
	}
	
	@PostMapping(value = "/setBid")
	@RequestMapping
	public BidDTO setBid(@ModelAttribute BidDTO bidDTO) {
		return null;
	}
	
	
}

