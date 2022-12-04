package com.bit.team_project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
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
import com.bit.team_project.DTO.UserDTO;
import com.bit.team_project.userService.UserService;

@Component
@RequestMapping(value = "user")
public class UserController {
	@Autowired
	private UserService userService;
	@GetMapping(value = "loginForm")
	public String writeForm() {
		return "/user/loginForm";
	}
	
	@GetMapping(value = "agreement")
	public String agreement() {
		return "/user/agreement";
	}
	@GetMapping(value = "writeForm")
	public String sign_in() {
		return "/user/writeForm";
	}
	@PostMapping(value = "write")
	@ResponseBody
	public void write(@ModelAttribute UserDTO userDTO) {
		userService.write(userDTO);
	}
	@PostMapping(value = "checkId")
	@ResponseBody
	public String checkId(@RequestParam String id) {
		return userService.checkId(id);
	}
	
	@GetMapping(value = "beforeDelete")
	public String beforeDelete() {
		return "/user/beforeDelete";
	}
	
	@PostMapping(value = "/login")
	@ResponseBody
	public String login(@RequestParam String id, @RequestParam String pwd, HttpSession session) {
		
		Map<String, String>map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		UserDTO userDTO = userService.login(map);
		
		if(userDTO != null) {
			session.setAttribute("id", id);
			session.setAttribute("name", userDTO.getName());
			return "ok";
		}
		else return "fail";
	}
	
	@PostMapping(value = "/logout")
	@ResponseBody
	public void logout(HttpSession session){
		session.invalidate();
	}
	@GetMapping(value = "/kakaoLogin")
	public String kakaoLogin(@RequestParam String code, HttpSession session) {
		System.out.println("인가코드 : "+code);
		String token = userService.getKakaoAccessToken(code);
		Map<String, String> map = userService.createKakaoUser(token);
	
		session.setAttribute("id", map.get("id"));
		session.setAttribute("name", map.get("name"));
		return "/user/kakaoLogin";
	}

	@GetMapping(value = "myPage")
	public String myPage() {
		return "/user/myPage";
	}
	@GetMapping(value = "chargePage")
	public String chargePage() {
		return "/user/chargePage";
	}
	@GetMapping(value = "myBidList")
	public String myBidList() {
		return "/user/myBidList";
	}
	@PostMapping(value = "getMyBidList")
	@ResponseBody
	public List<BidDTO> getMyBidList(@RequestParam String id) {
		System.out.println(id);
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getMyBidList(map);
	}
	@PostMapping(value = "checkUser")
	@ResponseBody
	public UserDTO checkUser(@RequestParam String id, String pwd) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		map.put("pwd",pwd);
		return userService.checkUser(map);
	}
	
	@PostMapping(value = "getUserDetail")
	@ResponseBody
	public UserDTO getUserDetail(@RequestParam String id) {
		System.out.println("id = "+id);
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getUserDetail(map);
	}
	@PostMapping(value = "getMyBidList1")
	@ResponseBody
	public List<BidDTO> getMyBidList1(@RequestParam String id) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getMyBidList1(map);
	}
	@PostMapping(value = "getMyBidList2")
	@ResponseBody
	public List<BidDTO> getMyBidList2(@RequestParam String id) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("id",id);
		return userService.getMyBidList2(map);
	}
	@PostMapping(value = "update")
	@ResponseBody
	public void update(@ModelAttribute UserDTO userDTO) {
		System.out.println(userDTO);
		userService.update(userDTO);
	}
	
	@PostMapping(value = "/getMessageCount")
	@ResponseBody
	public int getMessageCount(@RequestParam String id) {
		System.out.println(id);
		return userService.getMessageCount(id);
	}
	@PostMapping(value = "pointCharge")
	@ResponseBody
	public void pointCharge(@RequestParam String id, String point) {
		Map<String, String>map = new HashMap<String, String>();
		System.out.println("con : " +id+point);
		map.put("id", id);
		map.put("point", point);
		userService.pointCharge(map);
	}
	
	@GetMapping(value = "adminPage")
	public String adminPage() {
		return "/user/adminPage";
	}
	@GetMapping(value = "adminLogin")
	public String adminLogin() {
		return "/user/adminLogin";
	}
	
	@PostMapping(value= "adminlogintest")
	@ResponseBody
	public UserDTO adminlogintest(@RequestParam String id,  String pwd,ModelMap modelMap,HttpSession session){
		modelMap.put("id", id);
		modelMap.put("pwd", pwd);
		UserDTO userDTO = userService.adminlogintest(modelMap);
		System.out.println(userDTO.getName()+"로그인 ㅇㅇ");
			if(userDTO.getName().equals("관리자")) {
				session.setAttribute("id", id);
				session.setAttribute("name", userDTO.getName());
			}
		
		return userService.adminlogintest(modelMap);
	}
	
	@PostMapping(value= "getAlluser")
	@ResponseBody
	public List<UserDTO> getAlluser(){
		return userService.getAlluser();
	}
	@PostMapping(value="deleteUser")
	@ResponseBody
	public void deleteUser(@RequestParam String id,HttpSession session) {
		userService.deleteUser(id);
		session.invalidate();
		
	}
	@PostMapping(value = "/getMyPoint")
	   @ResponseBody
	   public String getMyPoint(HttpSession session) {
	      Map<String, String>map = new HashMap<String, String>();
	      map.put("id", (String) session.getAttribute("id"));
	      System.out.println(userService.getMyPoint(map));
	      return userService.getMyPoint(map);
	}
	
	
}