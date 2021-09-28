/*
 * DAO를 담당
 */
		
package kr.co.dong.emp;

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

}
