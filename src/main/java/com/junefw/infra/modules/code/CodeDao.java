package com.junefw.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.junefw.infra.modules.code.CodeMpp";
	
	public int selectOneCount(CodeVo vo) throws Exception {

		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public List<Code> selectList(CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectList",vo);
	}

	public int insert(Code dto) {

		return sqlSession.insert(namespace + ".insert", dto);

	}
	

	public Code selectOne(CodeVo vo) throws Exception {

		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}

	public int update(Code dto) throws Exception {
		return sqlSession.update(namespace + ".update", dto);
	}
	public int delete(CodeVo vo) throws Exception{ return sqlSession.delete(namespace+".delete",vo);}
	
	public int updateDelete(CodeVo vo) throws Exception { return sqlSession.update(namespace+".updateDelete",vo); }
	
	//-----------------------------------------------------------
	
	public List<Code> selectList2(CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectList2" ,vo);
	}
	

	public int insert2(Code dto) {

		return sqlSession.insert(namespace + ".insert2", dto);

	}

	public Code selectOne2(CodeVo vo) throws Exception {

		return sqlSession.selectOne(namespace + ".selectOne2", vo);
	}

	public int update2(Code dto) throws Exception {
		return sqlSession.update(namespace + ".update2", dto);
	}
	public int selectOneCount2(CodeVo vo) throws Exception{
		return sqlSession.selectOne(namespace+".selectOneCount2",vo);
	}
	public List<Code> selectListForCache() throws Exception{
		return sqlSession.selectList(namespace+".selectListForCache",null);
	}

}