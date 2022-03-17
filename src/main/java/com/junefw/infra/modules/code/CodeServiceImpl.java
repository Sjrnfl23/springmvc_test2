package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
	
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	
	@Override
	public int insert(Code dto) throws Exception{
		return dao.insert(dto);
	}
	public Code selectOne(CodeVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	public int update(Code dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public List<Code> selectList2(CodeVo vo) throws Exception {
		return dao.selectList2(vo);
	}
	
	@Override
	public int insert2(Code dto) throws Exception{
		return dao.insert2(dto);
	}
	public Code selectOne2(CodeVo vo) throws Exception{
		return dao.selectOne2(vo);
	}
	public int update2(Code dto) throws Exception{
		return dao.update2(dto);
	}
	@Override
	public int selectOneCount2(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount2(vo);
	}

	
	
}