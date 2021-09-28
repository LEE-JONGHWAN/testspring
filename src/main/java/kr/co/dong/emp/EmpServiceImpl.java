/*
 * DAO를 담당
 */
		
package kr.co.dong.emp;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class EmpServiceImpl implements EmpService {
	@Inject
	private EmpDAO dao;
	
	
	@Override
	public int empCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.empCount();
	}


	@Override
	public EmpDTO search(String ename) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("서비스 : " + ename);
		return dao.search(ename);
	}


	@Override
	public List<EmpDTO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void insertEmp(EmpDTO eDTO) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
