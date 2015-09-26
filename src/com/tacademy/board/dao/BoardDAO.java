package com.tacademy.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tacademy.board.comm.JDBCUtil;
import com.tacademy.board.vo.Board;

public class BoardDAO {

	private static final String insertSQL = 
			"INSERT INTO BOARD( TITLE, WRITER, CONTENT) VALUES( ?, ?, ? );";
	private static final String selectAllSQL = "select * from board order by seq desc";
	
	private static final String selectSQL = "select * from board where seq = ?";
	private static final String updateSQL = "update board set title = ?, content = ? where seq = ?";
	
	public void doUpdate( Board board ){
		Connection con = null;	
		PreparedStatement stmt = null;
		try{
			con = JDBCUtil.getConnection();
			stmt = con.prepareStatement( updateSQL );
			stmt.setString(1, board.getTitle());	
			stmt.setString(2, board.getContent());
			stmt.setInt(3, board.getSeq());
			int cnt = stmt.executeUpdate();
			System.out.println(cnt == 1 ? "success" : "fail");
		}catch(SQLException e){
			System.out.println("update error : " + e);
		}finally{
			JDBCUtil.close(stmt, con);
		}
	}
	public void getBoard( Board board ){
		Connection con = null;	
		PreparedStatement stmt = null;
		ResultSet rst = null;
		try{
			con = JDBCUtil.getConnection();
			stmt = con.prepareStatement( selectSQL );
			stmt.setInt(1, board.getSeq());
			
			rst = stmt.executeQuery();
			if(rst.next()){				
				board.setTitle(rst.getString(2));
				board.setWriter(rst.getString(3));
				board.setContent(rst.getString(4));
				board.setRegDate(rst.getString(5));
				board.setCnt(rst.getInt(6));
			}
		}catch(SQLException e){
			System.out.println("select  error : " + e);
		}finally{
			JDBCUtil.close(rst, stmt, con);
		}
	}
	public ArrayList<Board> getBoardList(){
		ArrayList<Board> list = new ArrayList<Board>();
		
		Connection con = null;	
		PreparedStatement stmt = null;
		ResultSet rst = null;
		try{
			con = JDBCUtil.getConnection();
			stmt = con.prepareStatement( selectAllSQL );
			rst = stmt.executeQuery();
			Board board;
			while(rst.next()){
				board = new Board();
				
				board.setSeq(rst.getInt(1));
				board.setTitle(rst.getString(2));
				board.setWriter(rst.getString(3));
				board.setContent(rst.getString(4));
				board.setRegDate(rst.getString(5));
				board.setCnt(rst.getInt(6));				
				list.add(board);
			}
		}catch(SQLException e){
			System.out.println("select All  error : " + e);
		}finally{
			JDBCUtil.close(rst, stmt, con);
		}
		
		return list;
	}
	
	public void doInsert( Board board ){
		Connection con = null;	
		PreparedStatement stmt = null;
		try{
			con = JDBCUtil.getConnection();
			stmt = con.prepareStatement(insertSQL);
			stmt.setString(1, board.getTitle());	
			stmt.setString(2, board.getWriter());	
			stmt.setString(3, board.getContent());
			int cnt = stmt.executeUpdate();
			System.out.println(cnt == 1 ? "success" : "fail");
		}catch(SQLException e){
			System.out.println("insert error : " + e);
		}finally{
			JDBCUtil.close(stmt, con);
		}
	}
}
