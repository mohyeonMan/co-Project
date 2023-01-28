package com.bit.team_project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.team_project.DTO.NoticeDTO;
import com.bit.team_project.DTO.NoticePageDTO;
import com.bit.team_project.DTO.QnaDTO;
import com.bit.team_project.noticeService.NoticeService;


@Controller
@RequestMapping(value="notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	
	@RequestMapping(value="notice")
	public String notice() {
		return "/notice/notice";
	}
	@PostMapping(value="getNoticeList")
	@ResponseBody
	public List<NoticeDTO> getNoticeList(){
		return noticeService.getNoticeList();
	}
	@RequestMapping(value="getNoticePage")
	public String getNoticePage(@RequestParam int num, Model model) {
		model.addAttribute("num",num);
		return "/notice/noticePage";
	}
	
	//공지사항 페이지추가	
	@RequestMapping(value="/noticePage",method=RequestMethod.GET)	
	@ResponseBody 
	public  List<NoticeDTO> noticePage(Model model,@RequestParam int num) {
		
		NoticePageDTO page = new NoticePageDTO();
		
		page.setNum(num);
		page.setCount(noticeService.count());		
				
		
		List<NoticeDTO> list = null;		
		list= noticeService.noticePage(page.getDisplayPost(), page.getPostNum());
		
		model.addAttribute("list",list);
		model.addAttribute("page",page); 

		model.addAttribute("select", num);
		
		return list;
		
	}
	
	@RequestMapping(value="noticeForm" )
	public String noticeForm() {
		return "/notice/noticeForm";
	}
	@GetMapping(value="noticeWrite")
	@ResponseBody
	public void noticeWrite(@ModelAttribute NoticeDTO noticeDTO) {
		noticeService.noticeWrite(noticeDTO);
	}
	
	@RequestMapping(value="noticeDetail" ,method=RequestMethod.GET)		
	public ModelAndView noticeDetail(@RequestParam("no_seq")int no_seq) {
		NoticeDTO noticeDTO = noticeService.noticeDetail(no_seq);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notice/noticeDetail");
		mav.addObject("noticeDTO",noticeDTO);
		return mav;
	}
	@RequestMapping(value="noticeUpdate",method=RequestMethod.GET)
	public ModelAndView noticeUpdate(@RequestParam("no_seq")int no_seq) {
		NoticeDTO noticeDTO = noticeService.noticeDetail(no_seq);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notice/noticeUpdate");
		mav.addObject("noticeDTO",noticeDTO);
		return mav;
	}
	@RequestMapping(value="noticeUpdateBtn",method = RequestMethod.GET)
	@ResponseBody
	public String noticeUpdateBtn(NoticeDTO noticeDTO) {
		
		noticeService.noticeUpdate(noticeDTO);
		return "/notice/noticUpdate";
	}
	@RequestMapping(value="noticeDelete",method= RequestMethod.GET)	
	public String noticeDelete(@RequestParam("no_seq")int no_seq) {
		noticeService.noticeDelete(no_seq);
		return"redirect:/notice/notice";
	}
		
	
	//qna
	@RequestMapping(value="/qnaList",method=RequestMethod.GET)
	public String qnaList(Model model) {
		List<QnaDTO> list =null;
		list= noticeService.qnaList();
		
		model.addAttribute("list",list);
		
		return "/notice/qnaList";
	}
	
	
	@RequestMapping(value="/qnaForm",method=RequestMethod.GET)
	public String qnaForm() {
		return "/notice/qnaForm";
	}
	
	@RequestMapping(value="/qnaWrite", method=RequestMethod.GET)	
	public String qnaWrite(@ModelAttribute QnaDTO qnaDTO) {
		noticeService.qnaWrite(qnaDTO);
		
		return"redirect:/notice/qnaList";
	}
	@RequestMapping(value="/qnaDetail" ,method=RequestMethod.GET)
	public String qnaDetail(@RequestParam("qna_seq") int qna_seq,Model model) {
		QnaDTO qnaDTO = noticeService.qnaDetail(qna_seq);
		model.addAttribute("qnaDetail", qnaDTO);
		return "/notice/qnaDetail";
	}
}