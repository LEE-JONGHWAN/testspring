package kr.co.dong.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.dong.domain.LoginVO;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "login/loginForm", method = RequestMethod.GET)
	public ModelAndView loginForm() {
		logger.info("로그인페이지여요");
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "로그인 버스를 태움.");
		mav.setViewName("login/loginForm");
		return mav;
	}

	// 1. request한 파라미터를 전달받는 방법1
	@RequestMapping(value = "login/login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		logger.info("로그인 성공했어요~");
		ModelAndView mav = new ModelAndView();
		String userID = request.getParameter("userID");
		String name = request.getParameter("name");
		// service 호출(기능)

		// view 전달
		mav.addObject("userID", userID);
		mav.addObject("name", name);
		mav.setViewName("login/result");
		return mav;
	}

	// 2. request한 파라미터를 전달 받는 방법2 @RequestParam : 개별로 처리
	@RequestMapping(value = "login/login2", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView login2(@RequestParam("userID") String userID, @RequestParam("name") String name,
			HttpServletRequest request) throws Exception {
		logger.info("login2장소");
		ModelAndView mav = new ModelAndView();
		request.setCharacterEncoding("UTF-8");
		logger.info("name : " + name);
		// service 호출

		// 결과값 전달
		mav.addObject("userID", userID);
		mav.addObject("name", name);
		mav.setViewName("login/result");
		return mav;
	}

	// 3. request한 파라미터를 전달 받는 방법3 @RequestParam Map<>
	@RequestMapping(value = "login/login3", method = RequestMethod.POST)
	public ModelAndView login3(@RequestParam Map<String, String> info) throws Exception {
		// 제대로 받았는지 확인.
		logger.info("login3장소");
		System.out.println("아이디 : " + info.get("userID"));
		System.out.println("이름 : " + info.get("name"));
		// service.test(info)      -> public void test(Map<String,String> info);

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("info", info);
		mav.setViewName("login/result");
		return mav;
	}
	
	   //4. request한 파라미터를 전달받는 방법  Bean Class(DTO)
	   @RequestMapping(value="login/login4", method = RequestMethod.POST)
	   public ModelAndView login4(@ModelAttribute("info") LoginVO info) throws Exception{
		   
	      // 제대로 받았는지 확인.
	      ModelAndView mav = new ModelAndView();
	      
	      mav.setViewName("login/result");
	      return mav;
	   }
	   
	   
//	   public ModelAndView login4(LoginVO info) throws Exception{
//		      // 제대로 받았는지 확인.
//		      
//		      ModelAndView mav = new ModelAndView();
//		      
//		      mav.addObject("info", info);
//		      mav.setViewName("login/result");
//		      return mav;
//		   }

}
