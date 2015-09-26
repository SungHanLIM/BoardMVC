package com.tacademy.board.test;

import com.tacademy.board.dao.BoardDAO;
import com.tacademy.board.vo.Board;

public class BoardTest {
	
	public BoardTest() {
		BoardDAO dao = new BoardDAO();
		
		Board board = new Board();
		board.setSeq(2);
		board.setTitle("새로운 타이틀");
		board.setContent("변경된 내용");
		
		dao.doUpdate(board);
		
		
//		한개 글 읽어 오기
//		Board board = new Board();
//		board.setSeq(10);
//		
//		dao.getBoard(board);
//		
//		System.out.println(board);
		
//		List 불러오기 소스
//		ArrayList<Board> list = dao.getBoardList();
//		
//		for(Board board : list){
//			System.out.println(board);
//		}
		
//		//insert test
//		Board board = new Board();
//		board.setTitle("타이틀2");
//		board.setWriter("이홍수");
//		board.setContent("모바일 tacademy .");
//		
//		dao.doInsert(board);
	}

	

	public static void main(String[] args) {
		new BoardTest();

	}

}
