package com.ming.main.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ming.main.DAO.MemberDAO;
import com.ming.main.VO.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDAO dao;
	
	
	//회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	@Override
	public void cuser(MemberVO vo) throws Exception {
		dao.cuser(vo);
	}
	
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	
	
}