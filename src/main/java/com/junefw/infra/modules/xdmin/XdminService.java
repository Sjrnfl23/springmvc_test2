package com.junefw.infra.modules.xdmin;

import java.util.List;


public interface XdminService {
	
	public List<Xdmin> selectList() throws Exception; 
	public int insert(Xdmin dto) throws Exception; 
	public Xdmin selectOne(XdminVo vo) throws Exception;
	public int update(Xdmin dto) throws Exception;
	public int delete(XdminVo vo) throws Exception;
		
}