package kr.co.dong.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	// test_main.jsp를 "/"로 받아서 날리자.
	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView testMain() throws Exception {
		logger.info("테스트 메인페이지 이동!");
		ModelAndView mav = new ModelAndView();
		// 서비스 처리가 있을 경우 호출해줌
		
		
		// view에 전달할 데이터(Model)와 파일명 지정(setviewname)
		mav.addObject("msg", "main으로 이동완료");
		mav.setViewName("index");
		return mav;
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	// test01페이지를 보여주는 메소드
	// 로그로 문자 표시
	// index , GET --> test01
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("인덱스 페이지로 이동합니다.");
		model.addAttribute("str", "안녕하세요.");
		
		return "test01";
	}
	
	// 로그인 폼을 보여주는 메소드
	// 로그로 문자 표시
	// 로그로 문자 표시
	// loginForm , GET --> loginForm
	@RequestMapping(value="/loginForm", method = RequestMethod.GET)
	public void loginForm() {
		logger.info("로그인폼으로 이동합니다.");
	}
	
	// 로그인 폼에서 아이디 & 비밀번호를 받아 성공하는지를 확인하는 메소드
	// 로그로 문자 표시
	// login , POST --> result
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String pw = request.getParameter("pw");
		
		logger.info("로그인 한 정보는" + " : " + userId + " , " + pw);
//		서비스 처리
		if(userId.equals("admin") && pw.equals("12345")) {
			logger.info("로그인 성공!!");
			//Session 변수 : 서버가 보관하는 전역변수
			//Cookie 
			return "result";
		}
		logger.info("로그인 실패!!");
		return "loginForm";
	}
	
	@RequestMapping(value="loginT", method = RequestMethod.GET)
	public ModelAndView loginT() {
		logger.info("테스트  로그인페이지 이동!");
		ModelAndView mav = new ModelAndView();
		// 서비스 처리가 있을 경우 호출해줌
		
		
		// view에 전달할 데이터(Model)와 파일명 지정(setviewname)
		mav.addObject("msg", "main으로 이동완료");
		mav.setViewName("loginTest");
		return mav;
	}
	
	
	
	
	
	
}
