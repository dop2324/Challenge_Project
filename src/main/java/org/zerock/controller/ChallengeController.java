package org.zerock.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String challengeContent(ApiVO api) {
		
		
		String result = ApiService.main("30일 공부 챌린지");
		
		ApiService.Parsing(result);
		
		System.out.println(ApiService.Parsing(result));
		return "/challenge/challenge_content";
	}
	
	
}
