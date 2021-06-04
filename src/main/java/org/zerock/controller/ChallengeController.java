package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.ApiVO;
import org.zerock.service.ApiService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/challenge/*")
@Log4j
@AllArgsConstructor
public class ChallengeController {
	
	
	
	@GetMapping("/")
	public String challenge() {
		return "/challenge/challenge_main";
	}
	
	@GetMapping(value="/content",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String challengeContent(Model model) {
		
		
		String result = ApiService.main("30일 공부 챌린지");
		
		 model.addAttribute("result",ApiService.getList(result));
		
		
		return "/challenge/challenge_content";
	}
	
	@GetMapping(value="/content2",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String challengeContent2(Model model) {
		
		
		String result = ApiService.main("30일 운동 챌린지");
		
		 model.addAttribute("result",ApiService.getList(result));
		
		
		return "/challenge/challenge_content2";
	}
	@GetMapping(value="/content3",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String challengeContent3(Model model) {
		
		
		String result = ApiService.main("30일 챌린지");
		
		 model.addAttribute("result",ApiService.getList(result));
		
		
		return "/challenge/challenge_content3";
	}
	
	
}
