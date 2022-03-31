package com.junefw.infra.modules.index;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.junefw.infra.modules.member.Member;



@Controller
public class IndexController {

	@Autowired
	IndexServiceImpl service;
	
	

	
	@RequestMapping(value = "/index/indexView")
	public String indexView(Model model) throws Exception {
		
		

		return "index/indexView";
	}
	@ResponseBody
	@RequestMapping(value = "/index/logoutProc")
	public Map<String, Object> logOutProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		
		httpSession.invalidate();
		
		returnMap.put("rt", "success");
		
		return returnMap;
		
		
	}
	
}