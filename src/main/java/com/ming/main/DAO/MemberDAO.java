package com.ming.main.DAO;

import com.ming.main.VO.MemberVO;

public interface MemberDAO {
	
	// 회원가입
	public void register(MemberVO vo) throws Exception;

	public void cuser(MemberVO vo) throws Exception;
}