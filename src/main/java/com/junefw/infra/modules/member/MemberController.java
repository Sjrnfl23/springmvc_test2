package com.junefw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.junefw.infra.modules.code.CodeServiceImpl;
import com.junefw.infra.modules.common.UtilDateTime;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")

	public String memberList(Model model,@ModelAttribute("vo")MemberVo vo) throws Exception {
		
		/*
		 * System.out.println(UtilDateTime.nowLocalDateTime());
		 * System.out.println(UtilDateTime.nowDate());
		 * System.out.println(UtilDateTime.nowString());
		 */
		
		
		
		
		int count=service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
	
		
		if(count != 0) {
			
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		

		return "member/memberList";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {
		model.addAttribute("codeGender" , CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("codeTelecom" , CodeServiceImpl.selectListCachedCode("10"));
		
		return "member/memberForm";
		
	
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {
		
		/* dto.setIfmmDob(UtilDateTime.nowDate()); */
		
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
		
		
		
		return "redirect:/member/memberEdit";
	}
	@RequestMapping(value = "/member/memberDelete")
	public String memberDelete(MemberVo vo) throws Exception {
		
		service.delete(vo);
		
		
		
		return "redirect:/member/memberList";
	}
	

	@RequestMapping(value = "/member/loginForm")
	public String loginForm(Model model) throws Exception {
		
		

		return "member/loginForm";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		System.out.println("asdasdf");
		
		Member rtMember = service.selectOneLogin(dto);
		
		if(rtMember != null) {
//		rtMember = service.selectOneLogin(dto);
			httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
			httpSession.setAttribute("sessId", rtMember.getIfmmId());
			httpSession.setAttribute("sessName", rtMember.getIfmmName());

			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	/*
	 * @RequestMapping(value = "/index/indexView") public String indexView(Model
	 * model) throws Exception {
	 * 
	 * 
	 * 
	 * return "index/indexView"; }
	 */
	
}