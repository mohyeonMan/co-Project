package com.bit.team_project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String write(@ModelAttribute ProductDTO productDTO, HttpSession session) {
		String id = (String) session.getAttribute("id");
		productDTO.setId(id);
		productService.write(productDTO);
		return "/product/productList";
	}
	
	@RequestMapping(value = "/productList")
	public String productList() {
		return "/product/productList";
	}
	@RequestMapping(value = "/productList_")
	public String productList_() {
		return "/product/productList_";
	}
	
	@PostMapping(value = "/getProductList")
	@ResponseBody
	public List<ProductDTO> getProductList( Model model){
//		model.addAttribute("category",category);
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
	@PostMapping(value = "updateHit")
	@ResponseBody
	public String updateHit(@RequestParam String hit,int product_seq) {
		Map<String, Integer>map = new HashMap<String, Integer>();
		map.put("hit", Integer.parseInt(hit));
		map.put("product_seq", product_seq);
		productService.updateHit(map);
		return "/product/productList";
	}

	@Scheduled(fixedDelay = 3000)  //3초마다 
	public void testset() {
		productService.test();
		productService.gomsg();
		
	}
	
	@PostMapping(value = "getIndexGrid")
	@ResponseBody
	public List<ProductDTO> getIndexGrid() {
		return productService.getIndexGrid();
	}
	
	@PostMapping(value = "/getProductSort")
	@ResponseBody
	public List<ProductDTO> getProductSort(@RequestParam String sort){
		Map<String, String>map = new HashMap<String, String>();
		map.put("sort",sort);
		return productService.getProductSort(map);
	}
	@RequestMapping(value = "/successedPrd")
	public String successedPrd() {
		return "/product/successedPrd";
	}
	
	@PostMapping(value = "/getProductNew")
	@ResponseBody
	public List<ProductDTO> getProductNew(){
		return productService.getProductNew();
	}
	
	
}

