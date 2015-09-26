package com.tacademy.board.test;

import com.tacademy.board.dao.MemberDAO;
import com.tacademy.board.vo.Member;

public class MemberTest {

	public MemberTest() {
		MemberDAO dao = new MemberDAO();
		
		Member member = new Member();
		member.setId("test");
		member.setPassword("test1");
		
		dao.doLogin(member);
		if(member.getName() == null){
			System.out.println("ID 또는 Password가 틀립니다.");
		}else{
			System.out.println(member.getName() + "님 환영합니다.");
		}
		
	}

	public static void main(String[] args) {
		new MemberTest() ;

	}

}
