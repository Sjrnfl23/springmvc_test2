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

	public List<Code> selectList() {
		return sqlSession.selectList(namespace + ".selectList", "");
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
	
	//-----------------------------------------------------------
	
	public List<Code> selectList2() {
		return sqlSession.selectList(namespace + ".selectList2", "");
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

}