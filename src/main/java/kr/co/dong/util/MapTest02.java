package kr.co.dong.util;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import kr.co.dong.emp.EmpDTO;

public class MapTest02 {
	
	public static void main(String[] args) {
		//사원테이블에서 사원번호, 이름, 급여만 보관해야겠다.
		EmpDTO eDTO = new EmpDTO();
		eDTO.setEmpno(123213);
		eDTO.setEname("장그래");
		eDTO.setSal(200);
		
		System.out.println(eDTO);
		
		Map<String, String> mapEmp = new HashMap<String, String>();
		//콘솔입력 부분 생략
		Scanner scan = new Scanner(System.in);
		String empno  = scan.next(); //123213
		String ename = scan.next();  // 장그래
		String sal = scan.next();    // 200
		mapEmp.put("empno", empno);
		mapEmp.put("ename", ename);
		mapEmp.put("sal", sal);
		
		System.out.println("사원명 : " + mapEmp.get("ename"));
		System.out.println("사원번호 : " + mapEmp.get("empno"));
		System.out.println("급여 : " + mapEmp.get("sal"));
	}
}
