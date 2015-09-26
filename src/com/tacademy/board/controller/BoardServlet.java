package com.tacademy.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tacademy.board.dao.BoardDAO;
import com.tacademy.board.vo.Board;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action){
		case "addBoard" :
			doAddBoard(request, response);
			break;
		case "updateBoard" :
			doUpdateBoard(request, response);
			break;
		case "getBoard" :
			doGetBoard(request, response);
			break;
		}		
	}
	protected void doGetBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		
		Board board = new Board();
		board.setSeq(Integer.parseInt(request.getParameter("seq")));
		
		dao.getBoard(board);
		
		request.setAttribute("board", board);
		RequestDispatcher dispatcher = request.getRequestDispatcher("getBoard.jsp");
		dispatcher.forward(request, response);
		
	}
	
	protected void doUpdateBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		
		Board board = new Board();
		board.setSeq(Integer.parseInt(request.getParameter("seq")));
		board.setTitle( request.getParameter("title") );
		board.setContent( request.getParameter("content"));
		
		dao.doUpdate(board);
		response.sendRedirect("getBoardList.jsp");
	}	
	protected void doAddBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		
		//insert test
		Board board = new Board();
		board.setTitle( request.getParameter("title") );
		board.setWriter( request.getParameter("writer") );
		board.setContent( request.getParameter("content") );
		
		dao.doInsert(board);
		response.sendRedirect("getBoardList.jsp");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
