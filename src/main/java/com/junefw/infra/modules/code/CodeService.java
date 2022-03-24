package com.junefw.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	// codegGroup
	public int selectOneCount(CodeVo vo) throws Exception;
	public List<Code> selectList(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	public int update(Code dto) throws Exception;
	public int delete(CodeVo vo) throws Exception;
	public int updateDelete(CodeVo vo) throws Exception;
	
	// code
	public List<Code> selectList2(CodeVo vo) throws Exception; 
	public int insert2(Code dto) throws Exception;
	public Code selectOne2(CodeVo vo) throws Exception;
	public int update2(Code dto) throws Exception;
	public int selectOneCount2(CodeVo vo) throws Exception;
		
	
}