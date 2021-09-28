package kr.co.dong.emp;

import java.util.List;

public interface EmpService {
	// 사원수를 호출하는 메소드
	public int empCount() throws Exception;
	// 사원찾기 메소드
	public EmpDTO search(String ename) throws Exception;
	// 사원 전체조회
	public List<EmpDTO> listAll() throws Exception;
	// 사원 추가
	public void insertEmp(EmpDTO eDTO) throws Exception;
	
	
}
