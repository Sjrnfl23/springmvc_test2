package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {


	@Autowired
	CodeServiceImpl service;
	
  
	@RequestMapping(value = "/code/codeGroupList")

	public String codeGroupList(@ModelAttribute("vo")CodeVo vo, Model model) throws Exception {
	
		int count=service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		if(count!=0) {
			List<Code> list=service.selectList(vo);
			model.addAttribute("list",list);
			
		}
		
		
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
	
	
	// ---------------------------
	// code
	
	@RequestMapping(value = "/code/codeList")
	public String codeList(Model model,@ModelAttribute("vo")CodeVo vo) throws Exception {
	
		int count=service.selectOneCount2(vo);
		vo.setParamsPaging(count);
		
		if(count!=0) {
			List<Code> listCodeGroup=service.selectList(vo);
			model.addAttribute("listCodeGroup",listCodeGroup);
			
			List<Code> list= service.selectList2(vo);
			
			model.addAttribute("list", list);
			
		
		}
		
		
		return "code/codeList";	
		
	}
	@RequestMapping(value = "/code/codeForm")
	public String codeForm(Model model,CodeVo vo) throws Exception {
		
		List<Code> list= service.selectList2(vo);
		model.addAttribute("list",list);
		return "code/codeForm";
	}
	
	
	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception{
		
		service.insert2(dto);
		
		return "";
	}
	
	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo,Model model) throws Exception{
		Code rt=service.selectOne2(vo);
		
		model.addAttribute("item",rt);
	
		
		
		return "code/codeView";
	}
	
	@RequestMapping(value = "/code/codeEdit")
	public String codeEdit(Model model,CodeVo vo) throws Exception {
		Code rt=service.selectOne2(vo);
		
		model.addAttribute("item",rt);
		
		return "code/codeEdit";
	}
	
	@RequestMapping(value = "/code/codeUpdate")
	public String codeUpdate(Code dto) throws Exception{
		
		
		service.update2(dto);
		
		
		return "";
	}
	
}