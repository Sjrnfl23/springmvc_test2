package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception {
		return dao.selectList(); 
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
	public List<Code> selectList2() throws Exception {
		return dao.selectList2(); 
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
	
}