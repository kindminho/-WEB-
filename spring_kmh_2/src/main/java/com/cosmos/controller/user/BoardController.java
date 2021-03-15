package com.cosmos.controller.user;



import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.mvc.support.*;

import com.cosmos.domain.*;
import com.cosmos.dto.*;
import com.cosmos.service.*;


@Controller
@RequestMapping(value="/board/")
public class BoardController {
	       
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private FileService fileService;
	
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
 
	
	@GetMapping("list")
	public void list(Model model) {
		model.addAttribute("board", boardService.getBoardList());
	}
	
	
	@GetMapping("regForm")
	public void regForm() {		
	}
	
	@PostMapping("register")
	public String register(Board board, MultipartFile files, HttpSession sess, RedirectAttributes rttr) {
		board.setId((String)sess.getAttribute("sess_id"));
		
		int bno = boardService.insertBoard(board);
		fileService.fileUpload(files, sess, bno);
		
		rttr.addFlashAttribute("bno", bno);
		
		return "redirect:/board/view";
	}
	
	
	@GetMapping("view")
	public void view(@ModelAttribute("bno") int bno, Model model) {
		
		BoardFileVo  board = boardService.getBoard3(bno);
		model.addAttribute("board", boardService.getBoard3(bno));
		
	}
	
	@PostMapping("modifyForm")
	public void modifyForm(Board board, UploadFile file, Model model) {
		
		model.addAttribute("board", board);
		model.addAttribute("uploadFile", file);
	}
		
	@PostMapping("modify")
	public String modify(Board board, MultipartFile files, HttpSession sess, RedirectAttributes rttr) {
		
		boardService.updateBoard(board);
		
		int bno = board.getBno();
		log.info("보드bno {}", bno);
		log.info("보드bno {}", bno);
		
		if(files != null && files.getSize() > 0) {
			fileService.fileUpload(files, sess, bno);
		}
		
		rttr.addFlashAttribute("bno", bno);
		return "redirect:/board/view";
	}
	
	@PostMapping("delete")
	public String delete(
			int bno, String saveFileName, HttpSession sess) {
		
		if(saveFileName != null) {
			//파일삭제
			String uploadPath = sess.getServletContext().getRealPath("resources/upload/");
			fileService.fileDel(uploadPath, saveFileName);
			
			 //파일 레코드삭제
			fileService.fileDelete(bno);
		}
		
		//보드삭제
		boardService.deleteBoard(bno);

		return "redirect:/board/list";
	}

}







