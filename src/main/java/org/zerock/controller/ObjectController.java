package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberDTO;
import org.zerock.domain.ObjectVO;
import org.zerock.service.MemberService;
import org.zerock.service.ObjectService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/object/*")
@AllArgsConstructor
public class ObjectController {
	private ObjectService service;
	private MemberService Mservice;
	
	@GetMapping("/list")
	public void list(Model model, @RequestParam("idbno") int idbno, MemberDTO member){
		model.addAttribute("list", service.getList(idbno));
		log.info("getList"+service.getList(idbno));
		log.info("getList"+idbno);
		
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(ObjectVO object,@RequestParam("idbno") int idbno, RedirectAttributes rttr) {
		
		service.register(object);
		
		rttr.addFlashAttribute("result", object.getBno());
		rttr.addAttribute("idbno",object.getIdbno());
		return "redirect:/object/list";
	}
	
	@GetMapping({"/get","/modify","/remove"})
	public void get(@RequestParam("bno") int bno,@RequestParam("idbno") int idbno, Model model) {
		model.addAttribute("object",service.get(bno));
		
	}
	
	
	@PostMapping("/modify")
	public String modify(ObjectVO object,@RequestParam("idbno") int idbno, RedirectAttributes rttr) {
		
		if (service.modify(object)) {
			rttr.addFlashAttribute("result","success");
		}
		
		rttr.addAttribute("idbno",object.getIdbno());
		return "redirect:/object/list";
	}
	@PostMapping("/remove")
	public String remove(ObjectVO object,@RequestParam("bno") int bno,@RequestParam("idbno") int idbno, RedirectAttributes rttr) {
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("idbno",object.getIdbno());
		return "redirect:/object/list";
	}
}










