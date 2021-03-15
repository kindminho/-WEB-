package com.cosmos.controller.user;


import java.util.*;


import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.*;

import com.cosmos.dto.*;
import com.cosmos.service.*;


@Controller
public class MemberController  {

	//의존성주입 Spring bean 관리
	@Autowired
	private MemberService ms;
	
	@Autowired
	CodeService code;
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
       
	
	@PostMapping("member/login")
	public String login(Member member, HttpSession sess, Model model) {
		log.info("Member id :" + member.getId());
		log.info("Member pw :" + member.getPw());
		
		Map<String, String> map = ms.loginService(member);
		
		String viewPage = null;
		
		switch(map.get("stat")) {
		case "ok" : //로그인 성공, 세션값 설정			
			sess.setAttribute("sess_id", member.getId());
			sess.setAttribute("sess_name", map.get("name"));
			viewPage = "redirect:/";
			break;				
		default : //id없는 경우, 패스워 불일치
			model.addAttribute("loginStat", "loginfail");	
			viewPage = "home2";
		}
		
		return viewPage;
	}
	
	@RequestMapping("member/logout")
	public String logout(HttpSession sess) {
		sess.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("member/myPage")
	public void mypage(Model model, HttpSession sess) {
		Member m = ms.getMember(sess.getAttribute("sess_id").toString());			
		
		model.addAttribute("member", m);				
		model.addAttribute("hobby", code.getCodeList("hobby"));
	}
	
	@PostMapping("member/modify")
	public String modify(Member member, Model model) {
		
		int rs = ms.update(member);
				
		if(rs > 0) {
			model.addAttribute(member);
			model.addAttribute("hobby", code.getCodeList("hobby"));
		}		
		return "member/memView";
	}
	
	@GetMapping("member/goOut")
	public String goOut(HttpSession sess) {
		
		ms.delete(sess.getAttribute("sess_id").toString());
		
		//sess.invalidate();
		//return "redirect:/";
		return "redirect:/member/logout";
	}
	
	@GetMapping("member/memRegForm")
	public void memRegForm() {		
	}
	
	@PostMapping("member/idDoubleCheck")
	public ResponseEntity<String> idDoubleCheck(@RequestParam("idstr") String id) {
		log.info("idDoubleCheck called... id : " + id);
		String rs = Integer.toString(ms.idDoubleCheck(id));
		return new ResponseEntity<String>(rs, HttpStatus.OK);
	}
	
	@PostMapping("member/register")
	public String register(Member member, RedirectAttributes rttr) {
		ms.insert(member);	
		rttr.addFlashAttribute("msg", 1);
		return "redirect:/";
	}

	
}





