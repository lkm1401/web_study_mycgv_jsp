package com.mycgv_jsp.dao;

import java.util.ArrayList;

import com.mycgv_jsp.vo.BoardVo;

public class BoardDao extends DBConn{
	/**
	 * select - 게시글 전체 리스트
	 */
	public ArrayList<BoardVo> select(){
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		String sql = "SELECT ROWNUM RNO, BID, BTITLE, BCONTENT, BHITS, ID, to_char(BDATE,'yyyy-mm-dd') bdate " + 
				" FROM (SELECT BID, BTITLE,BCONTENT,BHITS, ID, BDATE FROM MYCGV_BOARD " + 
				"          ORDER BY BDATE DESC)";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVo boardVo = new BoardVo();
				boardVo.setRno(rs.getInt(1));
				boardVo.setBid(rs.getString(2));
				boardVo.setBtitle(rs.getString(3));
				boardVo.setBcontent(rs.getString(4));
				boardVo.setBhits(rs.getInt(5));
				boardVo.setId(rs.getString(6));
				boardVo.setBdate(rs.getString(7));
				
				list.add(boardVo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * insert - 게시글 등록
	 */
	public int insert(BoardVo boardVo) {
		int result = 0;
		String sql = "insert into mycgv_board(bid,btitle,bcontent,bhits,id,bdate) "
				+ " values('b_'||LTRIM(to_char(sequ_mycgv_board.nextval,'0000')),?,?,0,?,sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, boardVo.getBtitle());
			pstmt.setString(2, boardVo.getBcontent());
			pstmt.setString(3, boardVo.getId());
			
			result = pstmt.executeUpdate();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
