package com.junefw.infra.modules.index;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.junefw.infra.modules.code.Code;
import com.junefw.infra.modules.code.CodeVo;

@Repository
public class IndexDao {

	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	
	

}