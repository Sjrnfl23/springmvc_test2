package com.junefw.infra.modules.xdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@RequestMapping(value = "/xdmin/xdminList")
	public String userList(Model model,XdminVo vo) throws Exception {
		List<Xdmin> list = service.selectList(vo);
		model.addAttribute("list",list);
		
		return "xdmin/xdminList";
	}

}