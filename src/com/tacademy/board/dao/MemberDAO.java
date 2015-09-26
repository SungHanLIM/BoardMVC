package com.tacademy.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tacademy.board.comm.JDBCUtil;
import com.tacademy.board.vo.Member;

public class MemberDAO {

	private static final String loingSQL = 
			"select * from member where id = ? and password = ?";
	
	public void doLogin(Member member){
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		try{
			con = JDBCUtil.getConnection();
			stmt = con.prepareStatement(loingSQL);
			stmt.setString(1, member.getId());
			stmt.setString(2, member.getPassword());
			rst = stmt.executeQuery();
			if(rst.next()){
				member.setName(rst.getString("name"));
			}
		}catch(SQLException e){
			System.out.println("login error : " + e);
		}finally{
			JDBCUtil.close(rst, stmt, con);
		}
	}

}
