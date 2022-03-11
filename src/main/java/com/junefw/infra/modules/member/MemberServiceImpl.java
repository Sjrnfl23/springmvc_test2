package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList(); 
	}
	public int insert(Member dto) throws Exception{
		return dao.insert(dto);
	}
	public Member selectOne(MemberVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	public int update(Member dto) throws Exception{
		return dao.update(dto);
	}
	public int delete(MemberVo vo) throws Exception{
		return dao.delete(vo);
	}
}