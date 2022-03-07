package com.junefw.infra.modules.code2;

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

	
	
	
}