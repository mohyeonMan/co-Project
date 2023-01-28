package com.bit.team_project.productService;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.bit.team_project.DTO.PrdCommentDTO;
import com.bit.team_project.DTO.ProductDTO;
import com.bit.team_project.DTO.SoketDTO;
import com.bit.team_project.productDAO.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;

	@Override
	public void write(ProductDTO productDTO , HttpSession session) {
		System.out.println(productDTO.getFile());
				if(productDTO.getFile()!=null) {
					//서버에서 저장 할 경로
					String uploadFolder = "/Users/leeyongshik/git/team/team_project/src/main/webapp/resources/img";
					List<MultipartFile> list = productDTO.getFile();
					System.out.println("파일"+productDTO.getFile());
					System.out.println(list.size());
					List<String> list2 = new ArrayList<String>();
				for(int i = 0; i<list.size(); i++) {
					
					System.err.println(list.get(i));
					
					UUID uuid = UUID.randomUUID();
					System.out.println(uuid.toString());
					String[] uuids = uuid.toString().split("-");
					
					String uniqueName = uuids[i];
					System.out.println("생성된 고유문자열" + uniqueName);
					
					
					String fileRealName = list.get(i).getOriginalFilename();
					long size = list.get(i).getSize();
					
					System.out.println("파일명 :" + fileRealName);
					System.out.println("사이즈" + size);
					
					File saveFile = new File(uploadFolder + "/"+ uniqueName + fileRealName);
					
					try {
						if(!list.isEmpty()) {
							
						list.get(i).transferTo(saveFile);
						}
						
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					list2.add(uniqueName + fileRealName);
				}
				productDTO.setImg1(list2.get(0));
				System.out.println("list size : " + list.size());
				if(list.size() == 2) {
				productDTO.setImg2(list2.get(1));
				productDTO.setImg3("");
				productDTO.setImg4("");
				}
				
				if(list.size() == 3) {
				productDTO.setImg2(list2.get(1));
				productDTO.setImg3(list2.get(2));
				productDTO.setImg4("");
				}
				if(list.size() == 4) {
				productDTO.setImg2(list2.get(1));
				productDTO.setImg3(list2.get(2));
				productDTO.setImg4(list2.get(3));
				
				}
			}
				String id = (String) session.getAttribute("id");
				productDTO.setId(id);
				productDTO.setEndDate(productDTO.getEndDay()+" "+productDTO.getEndTime());
				System.out.println(productDTO.getEndDate());
			System.out.println(productDTO.toString());
						
				productDAO.write(productDTO);
	}

	@Override
	public List<ProductDTO> getList() {
		return productDAO.getList();
	}
	
	@Override
	public ProductDTO getView(ModelMap modelMap) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("product_seq", (String) modelMap.get("product_seq"));
		return productDAO.getOne(map);
	}

	@Override
	public ProductDTO getProductView(int product_seq) {
		
		return productDAO.getProductView(product_seq);
	}

	@Override
	public void updateHit(Map<String, String> map) {
		productDAO.updateHit(map);
	}

	@Override
	public List<ProductDTO> getIndexGrid() {
		return productDAO.getIndexGrid();
	}

	@Override
	public List<ProductDTO> getProductSort(Map<String, String> map) {
		return productDAO.getProductSort(map);
	}

	@Override
	public void saveNotify(SoketDTO soketDTO) {
		productDAO.saveNotify(soketDTO);
		
	}

	@Override
	public void commentSet(ModelMap modelMap) {
		productDAO.commentSet(modelMap);
	}

	@Override
	public List<PrdCommentDTO> getComment(ModelMap modelMap) {
		return productDAO.getComment(modelMap);
	}	
	
	@Override
	public List<ProductDTO> getProductNew() {
		return productDAO.getProductNew();
	}

	@Override
	public List<ProductDTO> getHighList() {
		return productDAO.getHighList();
	}
	
	@Override
	public List<SoketDTO> getMessageList(String id) {
		return productDAO.getMessageList(id);
	}

	@Override
	public List<ProductDTO> getPopularList() {
		return productDAO.getPopularList();
	}

	@Override
	public void setPrdStatus() {
		productDAO.setPrdStatus();
	}

	@Override
	public ProductDTO showGettingPrd() {
		return productDAO.showGettingPrd();
	}

	@Override
	public void deletePrd(Map<String, String> map) {
		productDAO.deletePrd(map);
		
	}

}
