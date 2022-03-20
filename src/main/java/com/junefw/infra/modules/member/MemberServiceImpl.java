package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.modules.code.CodeVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	public int insert(Member dto) throws Exception{
		dao.insert(dto);
		dao.insertEmail(dto);
		dao.insertPhone(dto);
		
		return 1;
				
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
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
	@Override
	public int insertEmail(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertEmail(dto);
	}
	@Override
	public int insertPhone(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertPhone(dto);
	}
	
	
}