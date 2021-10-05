package kr.co.dong.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ScriptController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="jscript01", method = RequestMethod.GET)
	public ModelAndView jscript01() {
		logger.info("jscript1이동");
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("js01", "this is js-test01 and ModelAndView useing.");
		mav.setViewName("jscript/jscript01");
		return mav;
	}
//	public String jscript01(Model model) {
//		logger.info("jscript1이동");
//		//로그 출력
//		model.addAttribute("js01", "this is js-test01");
//		return "jscript01";
//	}
	
	@RequestMapping(value="jscript02", method = RequestMethod.GET)
	public ModelAndView jscript02() {
		logger.info("jscript2이동");
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("js02","this is js-test02 and ModelAndView useing.");
		mav.setViewName("jscript/jscript02");
		return mav;
	}
//	public String jscript02(Model model) {
//		logger.info("jscript2이동");
//		//로그 출력
//		model.addAttribute("js02", "this is js-tst02");
//		return "jscript02";
//	}
	
	@RequestMapping(value="jscript03", method = RequestMethod.GET)
	public ModelAndView jscript03() {
		logger.info("jscript3이동");
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("js03", "this is js-test03 and ModelAndView useing.");
		mav.setViewName("jscript/jscript03");
		return mav;
	}
	
	@RequestMapping(value="jscript04", method = RequestMethod.GET)
	public ModelAndView jscript04() {
		logger.info("jscript4이동");
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("js04", "this is js-test04 and ModelAndView useing.");
		mav.setViewName("jscript/jscript04");
		return mav;
	}
	
}
