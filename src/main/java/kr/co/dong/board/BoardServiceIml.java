/* [ Service 작성시 ]  
 * 1. @Service 등록
 * 2. @Inject
 *     BoardDAO boardDAO;
 *     
 * 3. 각 메소드에 필요한 함수명선택 후 작성
 *    boardDAO.login(map);
 * 
 */
package kr.co.dong.board;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class BoardServiceIml implements BoardService{
	@Inject
	BoardDAO boardDAO;
	
	
	@Override
	public Map login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return boardDAO.login(map);
		
	}

}
