package kr.co.dong.board;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	BoardService boardService;
	
	// 로그인 폼 이동
	@RequestMapping(value="board/login", method = RequestMethod.GET)
	public String login() {
		logger.info("login view 이동!");
		return "login";
		
	}
	
	// 로그인 처리
	@RequestMapping(value="board/login", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, Object> map
			, HttpServletRequest request
			, HttpServletResponse response
			, HttpSession session) throws Exception {
		request.setCharacterEncoding("UTF-8");
		logger.info("요청정보 받아서 서비스로 보내기");
		Map user = boardService.login(map);
		//--------- user ------------
		//-      "id" : "value1"    -
		//-		 "name" : "value2"  -
		//---------------------------
		// 실패시
		if(user == null) {
			logger.info("로그인 안됨");
			return "redirect:login";
		} else {
			logger.info("로그인 성공!");
			// 세션부여 - 서버가 보관하는 전역 속성, 쿠키 - 클라이언트가 보관하는 전역 속성
			session.setAttribute("user", user);
			return "redirect:/";
		}
		
	}
	

}
