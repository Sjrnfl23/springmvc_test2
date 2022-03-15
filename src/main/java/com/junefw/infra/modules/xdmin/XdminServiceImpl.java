package com.junefw.infra.modules.xdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class XdminServiceImpl implements XdminService{

	@Autowired
	XdminDao dao;
	
	@Override
	public List<Xdmin> selectList() throws Exception {
		return dao.selectList(); 
	}
	public int insert(Xdmin dto) throws Exception{
		return dao.insert(dto);
	}
	public Xdmin selectOne(XdminVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	public int update(Xdmin dto) throws Exception{
		return dao.update(dto);
	}
	public int delete(XdminVo vo) throws Exception{
		return dao.delete(vo);
	}
}