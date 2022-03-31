package com.junefw.infra.modules.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.modules.code.CodeVo;

@Service
public class IndexServiceImpl implements IndexService{

	@Autowired
	IndexDao dao;
	

	
	
}