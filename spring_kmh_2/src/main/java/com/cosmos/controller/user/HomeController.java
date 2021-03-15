package com.cosmos.controller.user;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,  @ModelAttribute("msg") String msg) {
		
		model.addAttribute("isMemRegSuccess", msg);
		return "home2";
	}
	
}
