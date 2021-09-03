package com.ming.main.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ming.main.DAO.MemberDAO;
import com.ming.main.VO.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDAO dao;
	
	
	//ȸ������
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	@Override
	public void cuser(MemberVO vo) throws Exception {
		dao.cuser(vo);
	}
	
	//�α���
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	
	
}