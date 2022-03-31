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
		
		dao.insertAddress(dto);
		dao.insertCountry(dto);
	
		dao.insertMobile(dto);
		dao.insertPhone(dto);
		dao.insertFax(dto);
		return 1;
	}
	public Xdmin selectOne(XdminVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	public int updateMember(Xdmin dto) throws Exception{
		return dao.updateMember(dto);
	}
	public int delete(XdminVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	
	/*
	 * public int insertEmail(Xdmin dto) {
	 * 
	 * return dao.insertEmail(dto); }
	 * 
	 * 
	 * public int insertPhone(Xdmin dto) {
	 * 
	 * return dao.insertPhone(dto); } public int insertMobile(Xdmin dto) {
	 * 
	 * return dao.insertPhone(dto); } public int insertFax(Xdmin dto) {
	 * 
	 * return dao.insertPhone(dto); }
	 */
	
	@Override
	public int selectOneCount(XdminVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
	
	// book
	
	@Override
	public List<Xdmin> selectBookList(XdminVo vo) throws Exception {
		
		return dao.selectBookList(vo);
	}
	
	public int selectOneCount2(XdminVo vo) {
		return dao.selectOneCount2(vo);
	}
}