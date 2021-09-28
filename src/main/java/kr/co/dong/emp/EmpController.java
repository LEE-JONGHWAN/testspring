package kr.co.dong.emp;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class EmpController {

	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);
	
	@Inject
	private EmpService service;
	
	
	@RequestMapping(value="empcount", method = RequestMethod.GET)
	public String empCount(Model model) throws Exception {
		logger.info("사원수 출력 페이지로 이동!");
		// 원하는 서비스 메소드 호출
		int count = service.empCount();
		// view에 저장할 데이터 
		model.addAttribute("count", count);
		return "test01";
	}
}












