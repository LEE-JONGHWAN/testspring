package kr.co.dong.emp;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

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
	public String empCount(Model model
			,HttpServletRequest request) throws Exception {
		logger.info("사원수 출력 페이지로 이동!");
		// 인코딩 - 디비저장시 한글이 깨졌을 경우
		request.setCharacterEncoding("UTF-8");
		
		// 원하는 서비스 메소드 호출
		int count = service.empCount();
		// view에 저장할 데이터 
		model.addAttribute("count", count);
		return "test01";
	}
	
	@RequestMapping(value="search", method = RequestMethod.POST)
	public String search(Model model, HttpServletRequest request) throws Exception {
		// 인코딩 - 디비저장시 한글이 깨졌을 경우
		request.setCharacterEncoding("UTF-8");
		
		String ename = request.getParameter("ename");
		logger.info("여기는 이름검색 입니다. : " + ename);

		// 원하는 서비스 메소드 호출
		EmpDTO eDTO = service.search(ename);
		System.out.println("사원번호" + eDTO);
		
		// view에 저장할 데이터 
		model.addAttribute("eDTO",eDTO);
		return "test01";
	}
	
}












