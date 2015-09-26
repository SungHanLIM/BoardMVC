<%@page import="com.google.gson.Gson"%><%@page import="com.tacademy.board.vo.Board"%><%@page import="com.tacademy.board.dao.BoardDAO"%><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%
	// seq에 해당하는 내용을 불러와서 아래 HTML에 출력하기
	BoardDAO dao = new BoardDAO();
	
	Board board = new Board();
	board.setSeq(Integer.parseInt(request.getParameter("seq")));
	
	dao.getBoard(board);
	
	Gson gson = new Gson();
	String result = gson.toJson(board);
	request.setAttribute("result", result);
%>${result}