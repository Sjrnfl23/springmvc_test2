package com.junefw.infra.modules.xdmin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.junefw.infra.modules.code.Code;

@Repository
public class XdminDao {

	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";

	public List<Xdmin> selectList() {
		return sqlSession.selectList(namespace + ".selectList", "");
	}

	public int insert(Xdmin dto) {
		System.out.println(dto.getIfmeEmailFull());
		return sqlSession.insert(namespace + ".insert", dto);
	}

	public Xdmin selectOne(XdminVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int update(Xdmin dto) {
		
		return sqlSession.update(namespace+".update",dto);
	}
	public int delete(XdminVo vo) {
		return sqlSession.delete(namespace+".delete",vo);
	}

}