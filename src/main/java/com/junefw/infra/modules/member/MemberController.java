package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model) throws Exception {

		List<Member> list = service.selectList();
		model.addAttribute("list", list);

		return "member/memberList";
	}
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {
		
		// 입력을 작동시킨다.
		int result = service.insert(dto);
		
		System.out.println("result: " + result);

		return "redirect:member/memberList";
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(Model model,MemberVo vo) throws Exception {
		
		Member rt=service.selectOne(vo);
		model.addAttribute("item",rt);
		
		return "member/memberView";
	}
	
	@RequestMapping(value = "/member/memberEdit")
	public String memberEdit(Model model,MemberVo vo) throws Exception {
		
		Member rt=service.selectOne(vo);
		model.addAttribute("item",rt);
		
		
		
		return "member/memberEdit";
	}

	@RequestMapping(value = "/member/memberUpdate")
	public String memberUpdate(Member dto) throws Exception {
		
		service.update(dto);
		
		
		
		return "redirect:/member/memberList";
	}
	@RequestMapping(value = "/member/memberDelete")
	public String memberDelete(MemberVo vo) throws Exception {
		
		service.delete(vo);
		
		
		
		return "redirect:/member/memberList";
	}
	
}