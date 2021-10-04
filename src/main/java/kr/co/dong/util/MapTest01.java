package kr.co.dong.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MapTest01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// background-color : red
		// List  -> ArrayList, LinkedList
		
		ArrayList<String> arr = new ArrayList<String>();
		List<String> arrList = new ArrayList<String>();
		System.out.println("Map Test");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("한국", "서울");
		map.put("미국", "워싱턴");
		map.put("msg","success"); // map.put("map", "fail");
		
		System.out.println("미국의 수도는???");
		System.out.println(map.get("미국"));
		
		
		//
		if(map.get("msg").equals("success")) {
			System.out.println("성공하였습니다.");
			System.out.println("다음 실행문을 실행가능");
		} else {
			System.out.println("실패- 리턴하세요.멈춤");
			System.exit(0);
		}
		System.out.println("1111");
		
		System.out.println("IF문 간소화에 대한 예제");
		if(!map.get("msg").equals("success")) {
			System.out.println("실패- 리턴하세요.멈춤");
			System.exit(0);
		}			
			System.out.println("성공하였습니다.");
			System.out.println("다음 실행문을 실행가능");
			System.out.println("1111");
		
	}

}
