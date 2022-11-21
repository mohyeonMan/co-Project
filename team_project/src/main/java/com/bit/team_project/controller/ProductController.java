package com.bit.team_project.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	
	@PostMapping(value = "/write_ok")
	public String write_ok(MultipartHttpServletRequest file) {
	//서버에서 저장 할 경로
		String uploadFolder = "/Users/leeyongshik/git/team/team_project/src/main/webapp/resources/img";
		List<MultipartFile> list = file.getFiles("file");
		
		
		for(int i = 0; i<list.size(); i++) {
			
			UUID uuid = UUID.randomUUID();
			System.out.println(uuid.toString());
			String[] uuids = uuid.toString().split("-");
			
			String uniqueName = uuids[0];
			System.out.println("생성된 고유문자열" + uniqueName);
			
			
			String fileRealName = list.get(i).getOriginalFilename();
			long size = list.get(i).getSize();
			
			System.out.println("파일명 :" + fileRealName);
			System.out.println("사이즈" + size);
			
			File saveFile = new File(uploadFolder + "/"+ uniqueName + fileRealName);
			try {
				list.get(i).transferTo(saveFile);
				System.out.println();
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return "/product/write_ok";
}
}
