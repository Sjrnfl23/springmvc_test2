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

	public List<Xdmin> selectList(XdminVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

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
	public Xdmin selectOne(XdminVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int update(Xdmin dto) {
		
		return sqlSession.update(namespace+".update",dto);
	}
	public int delete(XdminVo vo) {
		return sqlSession.delete(namespace+".delete",vo);
	}
	public int selectOneCount(XdminVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}

}