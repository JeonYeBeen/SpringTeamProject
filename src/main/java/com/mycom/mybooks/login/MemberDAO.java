package com.mycom.mybooks.login;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycom.mybooks.login.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertMember(MemberVO vo) {
		int result = sqlSession.insert("Member.insertMember",vo);
		return result;
	}
	
	public int updateMember(MemberVO vo) {
		int result = sqlSession.update("Member.updateMemeber",vo);
		return result;
	}
	
	public int deleteMember(int id) {
		int result = sqlSession.delete("Member.deleteMember",id);
		return result;
	}
	
	public MemberVO getMember(MemberVO vo) {
		MemberVO one = sqlSession.selectOne("Member.getMember", vo);
		return one;
	}
	
	public List<MemberVO> getMemberList() {
		List<MemberVO> list = sqlSession.selectList("Member.getMemberList");
		return list;
	}
	
}
