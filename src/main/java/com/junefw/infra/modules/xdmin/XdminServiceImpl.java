package com.junefw.infra.modules.xdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class XdminServiceImpl implements XdminService{

	@Autowired
	XdminDao dao;
	
	@Override
	public List<Xdmin> selectList(XdminVo vo) throws Exception {
		
		return dao.selectList(vo); 
	}
	public int insert(Xdmin dto) throws Exception{
		dao.insert(dto);
		dao.insertEmail(dto);
		dao.insertPhone(dto);
		dao.insertAddress(dto);
		dao.insertCountry(dto);
		return 1;
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
	
	@Override
	public int insertEmail(Xdmin dto) {
		
		return dao.insertEmail(dto);
	}
	
	@Override
	public int insertPhone(Xdmin dto) {
		
		return dao.insertPhone(dto);
	}
	@Override
	public int selectOneCount(XdminVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
}