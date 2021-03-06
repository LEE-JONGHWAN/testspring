/*
 * Mybatis를 담당(사용) -> SqlSession 사용
 * 
 * 메소드 종류
 * 1.  selectList()
 * 2.  selectOne()
 * 3.  insert()
 * 4.  update()
 * 5.  delete()
 */
package kr.co.dong.emp;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class EmpDAOImpl implements EmpDAO {
	@Inject  // @Autowired : spring전용
	private SqlSession sqlSession;
	
	// nameSpace에 매퍼의 이름을 지정해준다.
	private static final String nameSpace = "kr.co.dong.empMapper";
	
	@Override
	public int empCount() throws Exception {
		return sqlSession.selectOne(nameSpace + ".empcount");
	}

	@Override
	public EmpDTO search(String ename) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DAO : " + ename);
		return sqlSession.selectOne(nameSpace + ".search",ename);
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
