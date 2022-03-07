package com.junefw.infra.modules.code2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "/code/codeGroupList")

	public String codeGroupList(Model model) throws Exception {
		List<Code> list= service.selectList();
		
		model.addAttribute("list", list);
		
		return "code/codeGroupList";	
		
	}
	
	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm() throws Exception {
		
		return "code/codeGroupForm";
	}
	
	
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto) throws Exception{
		
		service.insert(dto);
		
		return "";
	}
	
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(CodeVo vo,Model model) throws Exception{
		Code rt=service.selectOne(vo);
		
		model.addAttribute("item",rt);
		System.out.println("안녕");
		
		
		return "code/codeGroupView";
	}
	
	@RequestMapping(value = "/code/codeGroupEdit")
	public String codeGroupEdit(Model model,CodeVo vo) throws Exception {
		Code rt=service.selectOne(vo);
		
		model.addAttribute("item",rt);
		
		return "code/codeGroupEdit";
	}
	
	@RequestMapping(value = "/code/codeGroupUpdate")
	public String codeGroupUpdate(Code dto) throws Exception{
		
		
		service.update(dto);
		
		
		return "";
	}
	
	
	
	
}