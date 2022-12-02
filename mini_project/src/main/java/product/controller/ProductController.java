package product.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping(value = "product")
public class ProductController {

	@GetMapping(value = "detailedPage_1")
	public String detailedPage_1() {
		return "/product/detailedPage_1";
	}
}
