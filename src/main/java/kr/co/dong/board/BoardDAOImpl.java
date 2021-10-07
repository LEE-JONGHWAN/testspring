/* [ DAO 작성시 ]  
 * 1. @Repository 등록
 * 2. @Inject
 *     SqlSession sqlSession;
 *     
 * 3. 각 메소드에 필요한 함수명선택 후 작성
 *    sqlSession.함수명(네임스페이스.id , param)
 *    => 함수명 : selectList(), selectOne(), insert(), update(), delete()
 * 
 */
package kr.co.dong.board;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public Map login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kr.co.dong.boardMapper.login", map);
		
	}

}
