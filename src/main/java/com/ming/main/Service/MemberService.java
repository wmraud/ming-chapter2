package com.ming.main.Service;

import com.ming.main.VO.MemberVO;

public interface MemberService {
    
	//ȸ������
	public void register(MemberVO vo) throws Exception;
	public void cuser(MemberVO vo) throws Exception;
	
	//�α���
	public MemberVO login(MemberVO vo) throws Exception;
	
	
}