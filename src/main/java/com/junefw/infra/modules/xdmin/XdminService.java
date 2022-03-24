package com.junefw.infra.modules.xdmin;

import java.util.List;


public interface XdminService {
	
	public List<Xdmin> selectList(XdminVo vo) throws Exception; 
	public int insert(Xdmin dto) throws Exception; 
	public int insertEmail(Xdmin dto);
	public int insertPhone(Xdmin dto);
	public int selectOneCount(XdminVo vo);
	
	public Xdmin selectOne(XdminVo vo) throws Exception;
	public int update(Xdmin dto) throws Exception;
	public int delete(XdminVo vo) throws Exception;
		
}