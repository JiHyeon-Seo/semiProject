package member.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import member.model.dao.memberDao;
import member.model.vo.Member;

public class memberService {

	public int insertMember(Member member) {

		Connection conn = JDBCTemplate.getConnection();
		int result = new memberDao().insertMember(conn, member);
		
		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
	public Member loginMember(String memberId, String memberPwd) {
		Connection conn = JDBCTemplate.getConnection();
		Member member = new memberDao().loginMember(conn, memberId, memberPwd);
		JDBCTemplate.close(conn);
		return member;
	}
	
	public String dupCheckId(String memberId) {
		Connection conn = JDBCTemplate.getConnection();
		String memberId2 = new memberDao().dupCheckId(conn, memberId); //돌려줄값
		//다오로 가자
		JDBCTemplate.close(conn);
		return memberId2;
	}
	
	public Member searchPwd(String memberId, String email) {
		Connection conn = JDBCTemplate.getConnection();
		Member member = new memberDao().searchPwd(conn, memberId, email);
		JDBCTemplate.close(conn);
		return member;
	}
	
	public int ModifyPwd(String pass1, String id) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new memberDao().ModifyPwd(conn, pass1, id);
		JDBCTemplate.close(conn);
		
		if(result > 0 ) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}JDBCTemplate.close(conn);
		return result;
	}
	
	public String SearchId(String memberName, String email) {
		Connection conn = JDBCTemplate.getConnection();
		String memberId = new memberDao().SearchId(conn, memberName, email);
		JDBCTemplate.close(conn);
		
		return memberId;
	}
}
