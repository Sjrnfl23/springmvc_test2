package com.junefw.infra.modules.xdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.infra.modules.member.Member;

@Controller
public class XdiminController {

	@Autowired
	XdminServiceImpl service;

	@RequestMapping(value = "/xdmin/xdminForm")
	public String userForm(Model model) throws Exception {
		
		
		return "xdmin/xdminForm";
	}
	@RequestMapping(value = "/xdmin/xdminInst")
	public String userInst(Model model,Xdmin dto) throws Exception {
		
		
		service.insert(dto);
		
		return "redriect:/xdmin/xdminList";
	}

	@RequestMapping(value = "/xdmin/xdminList")
	public String userList(@ModelAttribute("vo")XdminVo vo,Model model) throws Exception {
		int count=service.selectOneCount(vo);
		vo.setParamsPaging(count);
		
		if(count!=0) {
			System.out.println(vo.getShOption());
			System.out.println(vo.getShValue());
			
			List<Xdmin> list = service.selectList(vo);
			model.addAttribute("list",list);
		}
		
		
		return "xdmin/xdminList";
	}
	@RequestMapping(value = "/xdmin/xdminView")
	public String xdminView(XdminVo vo,Model model) throws Exception {
		Xdmin xdmin= service.selectOne(vo);
		model.addAttribute("item",xdmin);
		
		return "xdmin/xdminView";
	}
	
	@RequestMapping(value = "/xdmin/userListDele")
	public String userListDele(XdminVo vo,Model model) throws Exception {
		
		service.delete(vo);
		
		
		return "redriect:/xdmin/xdminList";
	}

}