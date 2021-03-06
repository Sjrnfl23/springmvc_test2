package com.junefw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
	//codeGroup
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
		dao.insert(dto);
		dao.insert2(dto);
		return 1;
	}
	public Code selectOne(CodeVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	public int update(Code dto) throws Exception{
		return dao.update(dto);
	}
	@Override
	public int delete(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}
	@Override
	public int updateDelete(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateDelete(vo);
		
	}
	
	// code 
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
	@PostConstruct
	public void selectListForCache() throws Exception {
		List<Code> codeListFromDb= (ArrayList<Code>) dao.selectListForCache();
		
		Code.cachedCodeArrayList.clear();
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: "+Code.cachedCodeArrayList.size()+" chached !");
	}
	
	public static List<Code> selectListCachedCode(String ifcgSeq) throws Exception{
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow: Code.cachedCodeArrayList) {
			if(codeRow.getIfcgSeq().equals(ifcgSeq)) {
				rt.add(codeRow);
			}else {
				// pass
			}
		}
		return rt;
	}
	
	
	
	
}