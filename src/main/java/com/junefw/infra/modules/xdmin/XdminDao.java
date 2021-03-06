package com.junefw.infra.modules.xdmin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.junefw.infra.modules.code.Code;
import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;

@Repository
public class XdminDao {

	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.junefw.infra.modules.xdmin.XdminMpp";

	//select
	public List<Xdmin> selectList(XdminVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public Xdmin selectOne(XdminVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int selectOneCount(XdminVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	public int selectIdCheck(XdminVo vo) {
		return sqlSession.selectOne(namespace + ".selectIdCheck", vo);
	}
	
	
	// insert
	public int insert(Xdmin dto) {
		System.out.println(dto.getIfmeEmailFull());
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int insertPhone(Xdmin dto) {

		return sqlSession.insert(namespace + ".insertPhone", dto);

	}
	public int insertEmail(Xdmin dto) {
		return sqlSession.insert(namespace+".insertEmail",dto);
	}
	
	public int insertCountry(Xdmin dto) {
		return sqlSession.insert(namespace+".insertCountry",dto);
	}
	public int insertAddress(Xdmin dto) {
		return sqlSession.insert(namespace+".insertAddress",dto);
	}
	
	public int insertMobile(Xdmin dto) {
		return sqlSession.insert(namespace+".insertMobile",dto);
	}
	public int insertFax(Xdmin dto) {
		return sqlSession.insert(namespace+".insertFax",dto);
	}
	
	public int insertJoinqna(Xdmin dto) {
		return sqlSession.insert(namespace+".insertJoinqna",dto);
	}
	
	//update and delete(가짜)
	public int updateMember(Xdmin dto) {
		return sqlSession.update(namespace+".updateMember",dto);
	}
	
	public int delete(XdminVo vo) {
		return sqlSession.update(namespace+ ".delete", vo);
	}
	

	
	
	
	//book
	
	public List<Xdmin> selectBookList(XdminVo vo) {
		return sqlSession.selectList(namespace + ".selectBookList", vo);
	}
	
	public int selectOneCount2(XdminVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount2", vo);
	}

}