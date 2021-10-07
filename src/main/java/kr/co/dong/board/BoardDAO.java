/* [ interface ]
 * - 전부 추상메소드
 * - final 필드만 가능
 * 
 * => 사용하는 이유 :
 * - 기능을 구현하는 초기 모델링 -> 이렇게 사용하자구요 (약속)
 * -> 각 개발자들은 이걸 각자의 소신대로 클래스를 구현함.(충돌이 안남)
 * 
 */

package kr.co.dong.board;

import java.util.Map;

public interface BoardDAO {
	
	// 로그인 처리를 위한 메소드
	public Map login(Map<String, Object> map);
	
}
