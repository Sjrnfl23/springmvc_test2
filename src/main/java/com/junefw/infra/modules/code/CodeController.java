package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String codeGroupForm(@ModelAttribute("vo") CodeVo vo) throws Exception {
		
		return "code/codeGroupForm";
	}
	
	
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto,CodeVo vo,RedirectAttributes redirectAttributes) throws Exception{
		
		service.insert(dto);
		
		redirectAttributes.addAttribute("ifcgSeq",dto.getIfcgSeq());
		redirectAttributes.addAttribute("thisPage",vo.getThisPage());
		redirectAttributes.addAttribute("shOption",vo.getShOption());
		redirectAttributes.addAttribute("shValue",vo.getShValue());
		
		return "redirect:/code/codeGroupView";
				
		/*
		 * return
		 * "redirect:/code/codeGroupView?ifcgSeq="+dto.getIfcgSeq()+makeQueryString(vo);
		 */
	}
	
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo")CodeVo vo,Model model) throws Exception{
		System.out.println("vo.getShoption()"+vo.getShOption());
		System.out.println("vo.getShValue()"+vo.getShValue());
		System.out.println("vo.getThisPage()"+vo.getThisPage());
		
		Code rt=service.selectOne(vo);
		
		model.addAttribute("item",rt);
		System.out.println("안녕");
		
		
		return "code/codeGroupView";
	}
	
	public String makeQueryString(CodeVo vo) {
		String tmp="&thisPage="+vo.getThisPage()+"&shOption="+vo.getShOption()+"&shValue="+vo.getShValue();
		return tmp;
	}
	
	@RequestMapping(value = "/code/codeGroupEdit")
	public String codeGroupEdit(Model model,@ModelAttribute("vo") CodeVo vo) throws Exception {
		Code rt=service.selectOne(vo);
		
		model.addAttribute("item",rt);
		
		return "code/codeGroupEdit";
	}
	
	@RequestMapping(value = "/code/codeGroupUpdate")
	public String codeGroupUpdate(Code dto,CodeVo vo) throws Exception{
		
		
		service.update(dto);
		
		
		return "redirect:/code/codeGroupView?ifcgSeq="+dto.getIfcgSeq()+makeQueryString(vo);
	}
	
	
	@RequestMapping(value = "/code/codeGroupDele")
	public String codeGroupDele(CodeVo vo,Code dto,RedirectAttributes redirectAttributes) throws Exception {
			service.delete(vo);
		
		   redirectAttributes.addAttribute("ifcgSeq", dto.getIfcgSeq());
		   redirectAttributes.addAttribute("thisPage", vo.getThisPage());	
		   redirectAttributes.addAttribute("shOption", vo.getShOption());	
		   redirectAttributes.addAttribute("shValue", vo.getShValue());	
		
		return "redirect:/code/codeGroupList";
	}
	@RequestMapping(value = "/code/codeGroupNele")
	public String codeGroupEDle(CodeVo vo,Code dto,RedirectAttributes redirectAttributes) throws Exception {
			service.updateDelete(vo);
		
		   redirectAttributes.addAttribute("ifcgSeq", dto.getIfcgSeq());
		   redirectAttributes.addAttribute("thisPage", vo.getThisPage());	
		   redirectAttributes.addAttribute("shOption", vo.getShOption());	
		   redirectAttributes.addAttribute("shValue", vo.getShValue());	
		
		return "redirect:/code/codeGroupList";
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